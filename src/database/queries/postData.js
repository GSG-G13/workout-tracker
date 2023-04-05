const connection=require('../config/connection');


const postData=(data)=>{
  let {exercise,workout_date,reps,duration} = data;
  const sql = {
    text: "INSERT INTO workouts(exercise,workout_date,reps,duration) VALUES($1, $2,$3,$4) returning exercise,workout_date,reps,duration",
    values: [exercise,workout_date,reps,duration],
  };

  return connection.query(sql);
};

module.exports = postData;