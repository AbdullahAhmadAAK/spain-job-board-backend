const findStartEndIndexes = (pageNumber, recordsPerPage) => {
  const startingIndex = (pageNumber-1) * recordsPerPage
  const endingIndex = startingIndex + recordsPerPage - 1

  return { startingIndex, endingIndex }
}

const validatePagination = (params) => {
  const { page_no, records_per_page } = params
  if (!page_no || !records_per_page) {
    return false
  } else if (page_no <= 0 || records_per_page <= 0) {
    return false
  } else {
    return true
  }
}

module.exports = {
  findStartEndIndexes,
  validatePagination
}