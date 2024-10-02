const getSupabaseClientFromReq = (req) => {
  return req.app.locals.supabase
}

module.exports = {
  getSupabaseClientFromReq
}