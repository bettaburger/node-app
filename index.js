const express = require('express');
const app = express();
const { readFile } = require ('fs').promises;

// Lets the user know that there is an error on the server
app.get('/', async (request, response) => { 
    response.send( await readFile('./HOME.html', 'utf8'));
});

// Tell our express app to listen to incoming request.
// Defining a port, calling app with that port
app.listen(process.env.PORT || 3000, () => console.log('App available on http://localhost:3000'))

