const express =require('express');
const  {getData ,postData,workout_page} =require('./controllers/workouts')

const router =express.Router();
router.get('/workout',getData);
router.post('/add_workout',postData);
router.get('/workouts',workout_page);

module.exports = router;