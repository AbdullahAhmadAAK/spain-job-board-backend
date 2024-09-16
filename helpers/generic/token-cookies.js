// TODO: modularize this ffs
const setTokensInCookie = (res, data) => {
  const session = data.session
  const {access_token, refresh_token, expires_in} = session
  
  const expiresInMilliseconds = expires_in * 1000 // should be according to what we set in supabase!

  res.cookie('access_token', access_token, {
    httpOnly: true,
    secure: process.env.NODE_ENV === 'production',
    maxAge: expiresInMilliseconds, // 60 mins,
    sameSite: 'Lax', // 'Strict',
    path: '/'
  });

  res.cookie('refresh_token', refresh_token, {
    httpOnly: true,
    secure: process.env.NODE_ENV === 'production',
    maxAge: 2592000000 , // 30 days, TODO: constantize!
    sameSite: 'Lax', // 'Strict',
    path: '/'
  });
}

const setAccessTokenInCookie = (res, data) => {
  const session = data.session
  const {access_token, expires_in} = session
  
  const expiresInMilliseconds = expires_in * 1000 // should be according to what we set in supabase!

  res.cookie('access_token', access_token, {
    httpOnly: true,
    secure: process.env.NODE_ENV === 'production',
    maxAge: expiresInMilliseconds, // 60 mins,
    sameSite: 'Lax', // 'Strict',
    path: '/'
  });

}

module.exports = {
  setTokensInCookie,
  setAccessTokenInCookie
}