require('dotenv').config();
const { createClient } = require('@supabase/supabase-js');
const cors = require('cors');
const cookieParser = require('cookie-parser');

// TODO: rename admin to adminSuperadmin
const { authenticateToken, authorizeAdmin, authorizeUser } = require('./middleware/auth')

const usersAuthRouter = require('./routes/users/auth')

const adminJobsRouter = require('./routes/admin/jobs')

const usersJobsRouter = require('./routes/users/jobs')
const usersProposalsRouter = require('./routes/users/proposals')

var express = require('express');
var app = express();

const supabase = createClient(process.env.SUPABASE_URL, process.env.SUPABASE_ANON_KEY)
app.locals.supabase = supabase;

app.use(cors({
  origin: 'http://localhost:3001', // Your React app's origin
  credentials: true // Allow credentials (cookies) to be sent
}));
app.use(express.json())
app.use(cookieParser())

app.use('/api/auth/users', usersAuthRouter)

app.use('/api/users/jobs', authenticateToken, authorizeUser, usersJobsRouter)
app.use('/api/users/proposals', authenticateToken, authorizeUser, usersProposalsRouter)

app.use('/api/admin/jobs', authenticateToken, authorizeAdmin, adminJobsRouter)


app.get('/', function (req, res) {
  res.send('Hello World!');
});

app.listen(3000, function () {
  console.log('Example app listening on port 3000!');
});