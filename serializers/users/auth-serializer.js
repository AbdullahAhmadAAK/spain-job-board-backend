const serializeAuthUser = (userAuth) => {  
  const userData = userAuth.user
  const user = formatUserDetails(userData)

  return {
    user: user,
    message: 'Logged in successfully'
  }
}

const formatUserDetails = (userData) => {
  return {
    email: userData.email
  }
}

module.exports = {
  serializeAuthUser
};