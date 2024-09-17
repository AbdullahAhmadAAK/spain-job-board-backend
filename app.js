require('dotenv').config();
const { createClient } = require('@supabase/supabase-js');
const cors = require('cors');
const cookieParser = require('cookie-parser');
const { corsConfig } = require('./config/cors-config');

// TODO: rename admin to adminSuperadmin
const { authenticateToken, authorizeAdminSuperadmin, authorizeUser } = require('./middleware/auth')

// Auth Routers
const usersAuthRouter = require('./routes/users/auth')

// Admin Routers
const adminJobsRouter = require('./routes/admin/jobs')

// User Routers
const usersJobsRouter = require('./routes/users/jobs')
const usersProposalsRouter = require('./routes/users/proposals')

var express = require('express');
var app = express();

const supabase = createClient(process.env.SUPABASE_URL, process.env.SUPABASE_ANON_KEY)
app.locals.supabase = supabase;

app.use(cors(corsConfig));
app.use(express.json())
app.use(cookieParser())

// Routes for auth
app.use('/api/auth/users', usersAuthRouter)

// Routes for freelancers
app.use('/api/users/jobs', authenticateToken, authorizeUser, usersJobsRouter)
app.use('/api/users/proposals', authenticateToken, authorizeUser, usersProposalsRouter)

// Routes for admins and superadmins
app.use('/api/admin/jobs', authenticateToken, authorizeAdminSuperadmin, adminJobsRouter)


app.get('/', function (req, res) {
  res.send('Hello World!');
});

app.listen(3000, function () {
  console.log('Example app listening on port 3000!');
});