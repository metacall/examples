#!/usr/bin/env node

// import
const { makeTiny } = require('./app.py');

// test that it works
console.log("The Shortened URL:" + makeTiny("https://github.com/Mostafa-wael"));

// warp it in a function
function shorten(url) {
    return makeTiny(url);
}
// export 
module.exports = {
    shorten
};