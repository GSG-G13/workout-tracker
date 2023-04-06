const connection=require('../config/connection');


const postData=(data ,id)=>{
  let {exercise,workout_date,reps,duration} = data;
  const sql = {
    text: "INSERT INTO workouts(user_id,exercise,workout_date,reps,duration) VALUES($5,$1, $2,$3,$4) returning exercise,workout_date,reps,duration",
    values: [exercise,workout_date,reps,duration,id],
  };

  return connection.query(sql);
};

module.exports = postData;