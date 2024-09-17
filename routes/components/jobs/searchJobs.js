const { findStartEndIndexes } = require('../pagination');
const { formatProposalsDataInHash } = require('./jobCommonMethods');

// TODO: simplify and separate for users admins and superadmin
const searchJobs = async (supabase, params) => {
  const { page_no, records_per_page, min_budget, max_budget, search_query, difficulty_id, status_id } = params;
  const { startingIndex, endingIndex } = findStartEndIndexes(page_no, records_per_page)

  let query = supabase
    .from('jobs')
    .select('id, title, description, min_budget, max_budget, difficulty_rating:job_difficulty_ratings(title, rating), status:statuses(title), proposals(*)')

  // Apply filters conditionally
  query = applyMinBudgetFilter(query, min_budget);
  query = applyMaxBudgetFilter(query, max_budget);
  query = applySearchFilter(query, search_query);
  query = applyDifficultyFilter(query, difficulty_id);
  query = applyStatusFilter(query, status_id);

  query = query.range(startingIndex, endingIndex)
  
  let { data, error } = await query
  data = formatProposalsDataInHash(data)

  return { data, error }
}

// .select('id, title, description, min_budget, max_budget, difficulty_rating:job_difficulty_ratings(title, rating), posted_by:user_profiles!jobs_posted_by_id_fkey(id, name, email), status:statuses(*)')

// HELPERS

const applyMinBudgetFilter = (query, minBudget) => {  
  if (!isEmptyFilter(minBudget)) {
    return query.gte('max_budget', parseInt(minBudget))
  }
  return query;
}

const applyMaxBudgetFilter = (query, maxBudget) => {
  if (!isEmptyFilter(maxBudget)) {
    return query.lte('min_budget', parseInt(maxBudget))
  }
  return query;
}

const applySearchFilter = (query, searchQuery) => {
  if (!isEmptyFilter(searchQuery)) {
    return query.ilike('title', `%${searchQuery}%`) 
    .or(`description.ilike.%${searchQuery}%`); 
  }
  return query;
}

const applyDifficultyFilter = (query, difficultyId) => {
  if (!isEmptyFilter(difficultyId)) {
    return query.eq('difficulty_rating_id', parseInt(difficultyId))
  }
  return query;
}

const applyStatusFilter = (query, statusId) => {
  if (!isEmptyFilter(statusId)) {
    return query.eq('status_id', parseInt(statusId))
  }
  return query;
}

const isEmptyFilter = (filterValue) => {
  return filterValue == undefined || filterValue == ""
}

module.exports = {
  searchJobs
}