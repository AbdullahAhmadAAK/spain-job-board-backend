const { renderSuccessResponse, renderErrorResponse } = require('../helpers/supabase/generic/render-response-helpers');
const { getSupabaseClientFromReq } = require('../helpers/supabase/generic/get-supabase-client')
const { getReqBody } = require('../helpers/generic/get-req-body')

const express = require('express');
const router = express.Router();

// View all jobs
router.get('/', async (req, res) => {

  const {page_no, records_per_page} = req.query

  // TODO: validate pages

  const supabase = getSupabaseClientFromReq(req)

  console.log(page_no);
  
  const { data, error } = await supabase
  .from('jobs')
  .select()

  // const { email, password, name } = getReqBody(req)
  // const supabase = getSupabaseClientFromReq(req)

  // const { data, error } = await signUpSupabase(supabase, email, password, name)

  if (error) {
    console.log('This is the error: ', error)
    renderErrorResponse(res, [error])
  } else {    
    renderSuccessResponse(res, {jobs: data})
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