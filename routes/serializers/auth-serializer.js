const serializeAuthUser = (userAuth) => {
  const session = userAuth.session
  const token = formatJwtTokenFromSession(session) 

  const userData = userAuth.user
  const user = formatUserDetails(userData)

  return {
    token: token,
    user: user
  }
}

const formatJwtTokenFromSession = (session) => {
  return {
    token: session.access_token,
    expires_in: session.expires_in,
    expires_at: session.expires_at
  }
}

const formatUserDetails = (userData) => {
  return {
    email: userData.email,
    role: userData.role
  }
}

module.exports = {
  serializeAuthUser
};