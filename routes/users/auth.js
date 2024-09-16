const { renderSuccessResponse, renderErrorResponse } = require('../../helpers/generic/render-response-helpers');
const { serializeLoginAuthUser, serializeSignupAuthUser } = require('../../serializers/users/auth-serializer')
const { getSupabaseClientFromReq } = require('../../helpers/supabase/generic/get-supabase-client')
const { signInSupabase, signUpSupabase } = require('../../helpers/supabase/auth/user-auth-helpers')
const { setTokensInCookie, setAccessTokenInCookie } = require('../../helpers/generic/token-cookies')
const { getReqBody } = require('../../helpers/generic/get-req-body')

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
    renderErrorResponse(res, ['Invalid credentials'])
  } else {
    setTokensInCookie(res, data)
    renderSuccessResponse(res, serializeLoginAuthUser(data))
  }
});

// TODO: not even sure if this is needed
router.post('/refreshToken', async (req, res) => {
  // TODO: constantize refresh_token cookie name, access_token cookie name
  const { refresh_token } = req.cookies
  const supabase = req.app.locals.supabase  

  // TODO: what if refresh token not here?
  const { data, error } = await supabase.auth.refreshSession({ refresh_token })
  
  if (error) {
    renderErrorResponse(res, ['Failed to refresh token'], 500)
  } else {
    const { session, user } = data
    // TODO set new cookie for access token too!
    setAccessTokenInCookie(res, data)
    renderSuccessResponse(res, {message: 'Token refreshed successfully'})
  }  
})

module.exports = router;