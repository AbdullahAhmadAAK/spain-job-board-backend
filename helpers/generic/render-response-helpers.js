const renderSuccessResponse = (res, data) => {
  return res.json({
    data: data,
    errors: []
  })
}

const renderErrorResponse = (res, errors) => {
  return res.json({
    data: {},
    errors: errors
  })
}

module.exports = {
  renderSuccessResponse,
  renderErrorResponse,
};