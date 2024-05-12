const express = require('express');
const router = express.Router();
const userController = require('../controllers/userController');

// Define user routes
router.post('/users', userController.createUser);
router.get('/users/:id', userController.getUserById);

// Add other user-related routes as needed

module.exports = router;