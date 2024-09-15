const signInSupabase = async (supabase, email, password) => {
  return supabase.auth.signInWithPassword({
    email: email,
    password: password,
  })
}

const signUpSupabase = async (supabase, email, password, fullName) => {
  return supabase.auth.signUp({
    email: email,
    password: password,
    options: {
      data: {
        full_name: fullName,
      },
    },
  })
}

module.exports = {
  signInSupabase,
  signUpSupabase
}