const { renderSuccessResponse, renderErrorResponse } = require('../../helpers/generic/render-response-helpers');
const { getSupabaseClientFromReq } = require('../../helpers/supabase/generic/get-supabase-client')
const { validatePagination } = require('../components/pagination')

const { searchJobs } = require('../components/jobs/searchJobs')
const { fetchJobDetails } = require('../components/jobs/fetchJobDetails')
const { serializeJob } = require('../../serializers/users/job-serializers')

const express = require('express');
const router = express.Router();

// View all jobs TODO: need for try catch here??
router.get('/', async (req, res) => {
  const params = req.query
  if (!validatePagination(params)) {
    return renderErrorResponse(res, ['Invalid pagination filters'], 500)
  }

  const supabase = getSupabaseClientFromReq(req)
  const { data, error } = await searchJobs(supabase, params)

  if (error) {
    renderErrorResponse(res, [error])
  } else {    
    const serializedJobs = data.map(job => serializeJob(job))
    renderSuccessResponse(res, { jobs: serializedJobs })
  }
});

// View job's details
router.get('/:jobId', async (req, res) => {
  const jobId = req.params.jobId
  const supabase = getSupabaseClientFromReq(req)
  const { data, error } = await fetchJobDetails(supabase, jobId)

  if (error) {
    renderErrorResponse(res, [error])
  } else {    
    renderSuccessResponse(res, {job: serializeJob(data)})
  }
});

module.exports = router;