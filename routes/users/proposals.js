const { renderSuccessResponse, renderErrorResponse } = require('../../helpers/generic/render-response-helpers');
const { getSupabaseClientFromReq } = require('../../helpers/supabase/generic/get-supabase-client')
const { getReqBody } = require('../../helpers/generic/get-req-body')
const { serializeProposal } = require('../../serializers/users/proposal-serializers')

const express = require('express');
const router = express.Router();

router.post('/', async (req, res) => {
  const reqBody = getReqBody(req)
  const proposalData = reqBody.proposal

  const proposerId = req.user.user_profile.id
  proposalData.proposer_id = proposerId
  
  // console.log('this is the proposalData === ', proposalData);
  
  const supabase = getSupabaseClientFromReq(req)

  // TODO: still need to modularize this and serialize properly! ask idrees
  const { data, error } = await supabase
    .from('proposals')
    .insert(proposalData)
    .select('proposer:user_profiles!proposals_proposer_id_fkey(*), title, description')
    .single()

  if (error) {
    console.error(error)
    renderErrorResponse(res, ['Failed to send proposal'], 500)
  } else {
    console.log('this is the data btw: ', data);
    
    renderSuccessResponse(res, { proposal: serializeProposal(data) }, 200)
  }
});

module.exports = router;