const renderSuccessResponse = (res, data, statusCode = 200) => {
  return res.status(statusCode).json({
    data: data,
    errors: []
  })
}

const renderErrorResponse = (res, errors, statusCode) => {
  return res.status(statusCode).json({
    data: {},
    errors: errors
  })
}

module.exports = {
  renderSuccessResponse,
  renderErrorResponse,
};