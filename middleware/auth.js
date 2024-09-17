const jwt = require('jsonwebtoken');
const { renderErrorResponse } = require('../helpers/generic/render-response-helpers')
const secretKey = process.env.SUPABASE_JWT_SECRET;

// Middleware to check if the token is valid
function authenticateToken(req, res, next) {  
  const authHeader = req.headers['authorization'];
  const token = authHeader && authHeader.split(' ')[1];
  
  if (token == null) {
    return renderErrorResponse(res, ['Unauthorized'], 401)
  }

  // Verify the token
  jwt.verify(token, secretKey, async (err, user) => {
    if (err) {
      return renderErrorResponse(res, ['Invalid token'], 403)
    }

    const supabase = req.app.locals.supabase
    const userId = user.sub

    const {data, error} = await getUserDetailsForToken(supabase, userId)

    if (error) {
      console.error(error)
      return renderErrorResponse(res, ['Internal server error'], 500)
    }
    
    req.user = {...user, user_profile: data};
    next();
  });
}

function authorizeAdminSuperadmin(req, res, next) {  
  if (req.user.user_profile.role.slug !== 'admin' && req.user.user_profile.role.slug !== 'superadmin') {
    return renderErrorResponse(res, ['Unauthorized'], 401)
  }

  else {
    next()
  }
}

function authorizeUser(req, res, next) {  
  if (req.user.user_profile.role.slug !== 'freelancer') {
    return renderErrorResponse(res, ['Unauthorized'], 401)
  }

  else {
    next()
  }
}

async function getUserDetailsForToken (supabase, userId) {
  const { data, error } = await supabase
  .from('user_profiles')
  .select('*, role:user_roles(slug)')
  .eq('id', userId)
  .single()
}

module.exports = { authenticateToken, authorizeAdminSuperadmin, authorizeUser };
