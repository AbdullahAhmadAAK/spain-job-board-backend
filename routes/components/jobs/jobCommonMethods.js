const formatProposalsDataInHash = (data) => {
  return data.map(job => {
    return {
      ...job,
      proposals_count: job.proposals.length,
      proposals: undefined
    }
  })
}

module.exports = {
  formatProposalsDataInHash
}