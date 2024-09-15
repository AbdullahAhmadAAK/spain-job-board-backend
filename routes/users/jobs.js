const { renderSuccessResponse, renderErrorResponse } = require('../../helpers/generic/render-response-helpers');
const { getSupabaseClientFromReq } = require('../../helpers/supabase/generic/get-supabase-client')
const { findStartEndIndexes, validatePagination } = require('../components/pagination')
const { searchJobs } = require('../components/jobs/searchJobs')
const { serializeJob } = require('../../serializers/users/job-serializers')

const express = require('express');
const router = express.Router();

// View all jobs
router.get('/', async (req, res) => {
  const {page_no, records_per_page} = req.query
  let params = req.query

  if (!validatePagination(page_no, records_per_page)) {
    return renderErrorResponse(res, ['Invalid pagination filters'], 500)
  }

  const { startingIndex, endingIndex } = findStartEndIndexes(page_no, records_per_page)
  const supabase = getSupabaseClientFromReq(req)

  params = {...params, startingIndex, endingIndex}

  // console.log('go to searchJobs with these: ', startingIndex, endingIndex);
  
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
  // const { email, password } = req.body
  // const supabase = getSupabaseClientFromReq(req)

  // const { data, error } = await signInSupabase(supabase, email, password)  

  if (false) {
    renderErrorResponse(res, [error])
  } else {    
    renderSuccessResponse(res, {job: {}})
  }
});

module.exports = router;