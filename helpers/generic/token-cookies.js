const { generateAccessTokenConfig, refreshTokenConfig } = require("../../config/access-token-config")
const { ACCESS_TOKEN_COOKIE_NAME, REFRESH_TOKEN_COOKIE_NAME } = require('../../config/cookies')

const setTokensInCookie = (res, data) => {
  const { access_token, refresh_token, expires_in } = data.session

  res.cookie(REFRESH_TOKEN_COOKIE_NAME, refresh_token, refreshTokenConfig);

  const accessTokenConfig = generateAccessTokenConfig(expires_in)
  res.cookie(ACCESS_TOKEN_COOKIE_NAME, access_token, accessTokenConfig);
}

const setAccessTokenInCookie = (res, data) => {
  const { access_token, expires_in } = data.session
  
  const accessTokenConfig = generateAccessTokenConfig(expires_in)
  res.cookie(ACCESS_TOKEN_COOKIE_NAME, access_token, accessTokenConfig);
}

module.exports = {
  setTokensInCookie,
  setAccessTokenInCookie
}