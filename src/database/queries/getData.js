const connection=require('../config/connection');

const getData=()=>{
  const sql={
    text:'SELECT * FROM workouts;',
  };
   return connection.query(sql)
}
module.exports=getData;
