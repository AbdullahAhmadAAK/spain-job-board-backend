// todo: BRING BOTH TOGETHER BAK!

const serializeLoginAuthUser = (userAuth) => {  

  // console.log('this is user auth: ', userAuth);
  
  // const session = userAuth.session
  // const token = formatJwtTokenFromSession(session) 

  const userData = userAuth.user
  const user = formatUserDetails(userData)

  return {
    // token_details: token,
    user: user,
    message: 'Logged in successfully'
  }
}

const serializeSignupAuthUser = (userAuth) => {  
  const userData = userAuth.user
  const user = formatUserDetails(userData)

  return {
    user: user,
    message: 'Signed up successfully'
  }
}

const formatJwtTokenFromSession = (session) => {
  // console.log('session in formatJwtTokenFromSession is: ', session);
  
  return {
    jwt_token: session.access_token,
    refresh_token: session.refresh_token,
    expires_in: session.expires_in,
    expires_at: session.expires_at
  }
}

const formatUserDetails = (userData) => {
  return {
    email: userData.email
  }
}

module.exports = {
  serializeSignupAuthUser,
  serializeLoginAuthUser
};