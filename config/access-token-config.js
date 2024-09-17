const generateAccessTokenConfig = (expiresInSeconds) => {
  const expiresInMilliseconds = expiresInSeconds * 1000 // Ensures that this stays according to what we have in supabase
  return {
    httpOnly: true,
    secure: process.env.NODE_ENV === 'production',
    maxAge: expiresInMilliseconds, // 60 mins,
    sameSite: 'Lax', // 'Strict',
    path: '/'
  }
} 

const refreshTokenConfig = {
  httpOnly: true,
  secure: process.env.NODE_ENV === 'production',
  maxAge: 2592000000, // 30 days, TODO: constantize!
  sameSite: 'Lax', // 'Strict',
  path: '/'
}

module.exports = {
  generateAccessTokenConfig,
  refreshTokenConfig
}