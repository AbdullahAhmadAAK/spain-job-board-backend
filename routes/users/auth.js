const { renderSuccessResponse, renderErrorResponse } = require('../helpers/supabase/generic/render-response-helpers');
const { serializeLoginAuthUser, serializeSignupAuthUser } = require('../serializers/auth-serializer')
const { getSupabaseClientFromReq } = require('../helpers/supabase/generic/get-supabase-client')
const { signInSupabase, signUpSupabase } = require('../helpers/supabase/auth/user-auth-helpers')
const { getReqBody } = require('../helpers/generic/get-req-body')

const express = require('express');
const router = express.Router();

// Sign up with email and password
router.post('/signup', async (req, res) => {
  const { email, password, name } = getReqBody(req)
  const supabase = getSupabaseClientFromReq(req)

  const { data, error } = await signUpSupabase(supabase, email, password, name)

  if (error) {
    console.log('This is the error: ', error)
    renderErrorResponse(res, ['Failed to sign up'])
  } else {    
    renderSuccessResponse(res, serializeSignupAuthUser(data))
  }
});

// Log in with email and password
router.post('/login', async (req, res) => {
  const { email, password } = req.body
  const supabase = getSupabaseClientFromReq(req)

  const { data, error } = await signInSupabase(supabase, email, password)  

  if (error) {
    renderErrorResponse(res, [error])
  } else {    
    renderSuccessResponse(res, serializeLoginAuthUser(data))
  }
});

module.exports = router;