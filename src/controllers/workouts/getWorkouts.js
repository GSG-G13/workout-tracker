const express=require('express')
const {getDataQuery} = require("../../database");

const getData = (req,res)=>{
 getDataQuery()
 .then((data) => {
  res.json({
    error: false,
    data: {
      workouts: data.rows,
      message: "Workouts Retrieved Successfully!",
    },
  });
})
//  .catch(err => console.log("err:", err))
// getDataQuery()
// .then((data) => {
//   res.render('index', { workouts: data.rows });
// })
// .catch((err) => {
//   console.log(err);
//   res.status(500).send('Internal server error');
// });

}

module.exports = getData;

