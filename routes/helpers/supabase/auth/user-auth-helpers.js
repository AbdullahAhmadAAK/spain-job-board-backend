const signInSupabase = async (supabase, email, password) => {
  return supabase.auth.signInWithPassword({
    email: email,
    password: password,
  })
}

const signUpSupabase = async (supabase, email, password) => {
  return supabase.auth.signUp({
    email: email,
    password: password,
  })
}

module.exports = {
  signInSupabase,
  signUpSupabase
}