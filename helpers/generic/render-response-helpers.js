const renderSuccessResponse = (res, data) => {
  return res.json({
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