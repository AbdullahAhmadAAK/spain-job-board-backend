const { renderSuccessResponse, renderErrorResponse } = require('../../helpers/generic/render-response-helpers');
const { serializeAuthUser } = require('../../serializers/users/auth-serializer')
const { getSupabaseClientFromReq } = require('../../helpers/supabase/generic/get-supabase-client')
const { signInSupabase, signUpSupabase } = require('../../helpers/supabase/auth/user-auth-helpers')
const { setTokensInCookie, setAccessTokenInCookie } = require('../../helpers/generic/token-cookies')
const { getReqBody } = require('../../helpers/generic/get-req-body')

const express = require('express');
const { REFRESH_TOKEN_COOKIE_NAME } = require('../../config/cookies');
const router = express.Router();

// Sign up with email and password
router.post('/signup', async (req, res) => {
  const { email, password, name } = getReqBody(req)
  const supabase = getSupabaseClientFromReq(req)

  const { data, error } = await signUpSupabase(supabase, email, password, name)

  if (error) {
    // TODO: error logger and general logger methods
    console.error(error)
    renderErrorResponse(res, ['Failed to sign up'])
  } else {    
    renderSuccessResponse(res, serializeAuthUser(data))
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
    renderSuccessResponse(res, serializeAuthUser(data))
  }
});

router.post('/refreshToken', async (req, res) => {
  const refresh_token = req.cookies[REFRESH_TOKEN_COOKIE_NAME]
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