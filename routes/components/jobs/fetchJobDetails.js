const { formatProposalsDataInHash } = require("./jobCommonMethods")

// TODO: simplify and separate for users admins and superadmin
const fetchJobDetails = async (supabase, jobId) => {
  let query = supabase
    .from('jobs')
    .select('id, title, description, min_budget, max_budget, difficulty_rating:job_difficulty_ratings(title, rating), status:statuses(title), proposals(*)')
    .eq('id', jobId)
    .maybeSingle()

  let { data, error } = await query
  data = formatProposalsDataInHash(data)

  return { data, error }
}

// .select('id, title, description, min_budget, max_budget, difficulty_rating:job_difficulty_ratings(title, rating), posted_by:user_profiles!jobs_posted_by_id_fkey(id, name, email), status:statuses(*)')

module.exports = {
  fetchJobDetails
}