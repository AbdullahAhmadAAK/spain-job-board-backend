const jwt = require('jsonwebtoken');
const { renderSuccessResponse, renderErrorResponse } = require('../routes/helpers/supabase/generic/render-response-helpers');

// Replace 'your_secret_key' with your actual secret key used to sign the JWTs
const secretKey = process.env.SUPABASE_JWT_SECRET;

// Middleware to check if the token is valid
function authenticateToken(req, res, next) {
    // Get the token from the request header
    const authHeader = req.headers['authorization'];
    const token = authHeader && authHeader.split(' ')[1];

    if (token == null) {
        // If there's no token, return 401 (Unauthorized)
        // return res.sendStatus(401);
        return renderErrorResponse(res, ['Unauthorized'], 401)
    }

    // Verify the token
    jwt.verify(token, secretKey, (err, user) => {
        if (err) {
            // If the token is invalid, return 403 (Forbidden)
            // return res.sendStatus(403);
            return renderErrorResponse(res, ['Invalid token'], 403)
        }

        // If the token is valid, attach the user object to the request
        req.user = user;

        // Call the next middleware/route handler
        next();
    });
}

module.exports = authenticateToken;
