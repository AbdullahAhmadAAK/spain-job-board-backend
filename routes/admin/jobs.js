const { renderSuccessResponse, renderErrorResponse } = require('../../helpers/generic/render-response-helpers');
const { getSupabaseClientFromReq } = require('../../helpers/supabase/generic/get-supabase-client')
const { getReqBody } = require('../../helpers/generic/get-req-body')
const { serializeJob, serializeJobDetails } = require('../../serializers/admin/job-serializers')
const { findStartEndIndexes } = require('../components/pagination')
const express = require('express');
const { searchJobs } = require('../components/jobs/searchJobs');
const router = express.Router();

// View all jobs
router.get('/', async (req, res) => {

  const { page_no, records_per_page } = req.query

  if (page_no <= 0) return renderErrorResponse(res, ['Page number should be greater than 0'])
  if (records_per_page <= 0) return renderErrorResponse(res, ['Records per page should be greater than 0'])

  const supabase = getSupabaseClientFromReq(req)
  const { startingIndex, endingIndex } = findStartEndIndexes(page_no, records_per_page)
  const { data, error } = await searchJobs(supabase, startingIndex, endingIndex)

  if (error) {
    renderErrorResponse(res, [error])
  } else {
    const serializedJobs = data.map(job => serializeJob(job))
    renderSuccessResponse(res, { jobs: serializedJobs })
  }
});

// View job's details
router.get('/:jobId', async (req, res) => {
  const jobId = parseInt(req.params.jobId)
  const supabase = getSupabaseClientFromReq(req)

  const { data, error } = await supabase
    .from('jobs')
    .select('*, difficulty_rating:job_difficulty_ratings(*), posted_by:user_profiles!jobs_posted_by_id_fkey(*), status:statuses(*)')
    .eq('id', jobId)
    .maybeSingle()

  if (error) {
    renderErrorResponse(res, [error])
  } else {
    const serializedJob = serializeJobDetails(data)
    renderSuccessResponse(res, { job: serializedJob })
  }
});

module.exports = router;