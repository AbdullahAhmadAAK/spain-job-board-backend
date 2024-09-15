const serializeLoginAuthUser = (userAuth) => {  
  const session = userAuth.session
  const token = formatJwtTokenFromSession(session) 

  const userData = userAuth.user
  const user = formatUserDetails(userData)

  return {
    token_details: token,
    user: user
  }
}

const serializeSignupAuthUser = (userAuth) => {  
  const userData = userAuth.user
  const user = formatUserDetails(userData)

  return {
    user: user
  }
}

const formatJwtTokenFromSession = (session) => {
  // console.log('session in formatJwtTokenFromSession is: ', session);
  
  return {
    token: session.access_token,
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