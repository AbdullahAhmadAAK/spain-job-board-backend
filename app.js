require('dotenv').config();
const { createClient } = require('@supabase/supabase-js');
const cors = require('cors');

const usersAuthRouter = require('./routes/users/auth')

var express = require('express');
var app = express();

const supabase = createClient(
  process.env.SUPABASE_URL,
  process.env.SUPABASE_ANON_KEY
)

app.locals.supabase = supabase;

app.use(cors());
app.use(express.json())   

app.use('/auth/users', usersAuthRouter)


app.get('/', function (req, res) {
  res.send('Hello World!');
});

app.listen(3000, function () {
  console.log('Example app listening on port 3000!');
});