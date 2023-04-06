const express = require('express');
const { getData, postData, workout_page} = require('./controllers/workouts');
const addUser =require('./controllers/users/addUser')


const router = express.Router();
router.get('/workout/:id', getData);
router.post('/add_workout', postData);
router.post('/login', addUser);
router.get('/workouts', workout_page);

module.exports = router;