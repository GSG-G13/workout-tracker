const connection=require('../config/connection');

const getData=(id)=>{
  const sql={
    text:'SELECT * FROM workouts where user_id = $1 ;',
    values:[id],
  };
   return connection.query(sql)
}
module.exports=getData;
