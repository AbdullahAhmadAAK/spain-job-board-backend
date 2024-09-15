const findStartEndIndexes = (pageNumber, recordsPerPage) => {
  const startingIndex = (pageNumber-1) * recordsPerPage
  const endingIndex = startingIndex + recordsPerPage - 1

  return { startingIndex, endingIndex }
}

const validatePagination = (pageNumber, recordsPerPage) => {
  if (!pageNumber || !recordsPerPage) {
    return false
  } else if (pageNumber <= 0 || recordsPerPage <= 0) {
    return false
  } else {
    return true
  }
}

module.exports = {
  findStartEndIndexes,
  validatePagination
}