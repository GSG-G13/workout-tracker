const express=require('express')
const {getDataQuery} = require("../../database");
const store = require('store')

const getData = (req,res)=>{

  const id = req.params.id;
  store.set('id',{ id :id  })
  console.log(req.params.id)
 getDataQuery(id)
 .then((data) => {
  res.json({
    error: false,
    data: {
      workouts: data.rows,
      message: "Workouts Retrieved Successfully!",
    },
  });
})
}

module.exports = getData;

