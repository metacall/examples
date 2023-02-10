#!/usr/bin/env node

// import
const { getRandomPassword } = require('./app.py');

// test that it works
console.log(getRandomPassword(length=10));

// warp it in a function
function getPassword(length=10) {
    return getRandomPassword(length);
}
// export 
module.exports = {
    getPassword
};