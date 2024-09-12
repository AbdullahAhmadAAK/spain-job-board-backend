const jwt = require('jsonwebtoken');
const { renderErrorResponse } = require('../routes/helpers/supabase/generic/render-response-helpers');

// Replace 'your_secret_key' with your actual secret key used to sign the JWTs
const secretKey = process.env.SUPABASE_JWT_SECRET;

// Middleware to check if the token is valid
function authenticateToken(req, res, next) {
  // Get the token from the request header

  // console.log('headers r these: ', req.headers);
  
  const authHeader = req.headers['authorization'];
  const token = authHeader && authHeader.split(' ')[1];

  // console.log('zis is token:', token);
  
  if (token == null) {
    // If there's no token, return 401 (Unauthorized)
    // return res.sendStatus(401);
    return renderErrorResponse(res, ['Unauthorized'], 401)
  }

  // Verify the token
  jwt.verify(token, secretKey, async (err, user) => {
    if (err) {
      // If the token is invalid, return 403 (Forbidden)
      // return res.sendStatus(403);
      return renderErrorResponse(res, ['Invalid token'], 403)
    }

    // TODO: get from supabase
    // console.log('lez try to get user role: ', user );
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

    console.log('this is data of user i get from supabase: ', data);
    
    const role = data.role.slug

    // If the token is valid, attach the user object to the request
    req.user = {...user, role: role};

    // Call the next middleware/route handler
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
