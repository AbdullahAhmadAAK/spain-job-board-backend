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

    const {data, error} = await supabase
      .from('user_profiles')
      .select('role:user_roles(slug)')
      .eq('id', userId)
      .single()

    if (error) {
      console.error(error)
      return renderErrorResponse(res, ['Internal server error'], 500)
    }
    
    const role = data.role.slug
    req.user = {...user, role: role};
    next();
  });
}

function authorizeAdmin(req, res, next) {
  console.log('i came to auth admin');
  
  if (req.user.role !== 'admin' && req.user.role !== 'superadmin') {
    return renderErrorResponse(res, ['Unauthorized'], 401)
  }

  else {
    next()
  }
}

module.exports = { authenticateToken, authorizeAdmin };
