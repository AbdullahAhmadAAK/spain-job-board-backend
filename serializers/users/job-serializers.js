const serializeJob = (job) => {  
  return job
}

const serializeJobDetails = (job) => {  
  return job ?? {}
}

module.exports = {
  serializeJob,
  serializeJobDetails
};