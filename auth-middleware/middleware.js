#!/usr/bin/env node

const jwt = require('jsonwebtoken');

const secret = 'secret';

// Mock user validation (DB)
function validUser(user, password) {
	return user === 'viferga' && password === '123';
}

// Sign in function that returns a token if login is valid
function signin(user, password) {
	if (validUser(user, password))
		return jwt.sign({ user, password }, secret);

	return false;
}

// Reverse string function
function reverse({ str }) {
	return str.split('').reverse().join('');
}

// Sum function
function sum({ a, b }) {
	return a + b;
}

// Middleware for verifying the token
function middleware(f) {
	return function (token, args) {
		try {
			return jwt.verify(token, secret) ? f(args) : 'Invalid token';
		} catch (e) {
			return e.message;
		}
	}
}

// Export sign in without middleware and reverse and sum with it
module.exports = {
	signin,
	reverse: middleware(reverse),
	sum: middleware(sum),
};
