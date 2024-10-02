const serializeProposal = (proposal) => {  
  return proposal
}

const serializeProposalDetails = (proposal) => {  
  return proposal ?? {}
}

module.exports = {
  serializeProposal,
  serializeProposalDetails
};