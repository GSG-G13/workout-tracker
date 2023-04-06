const express = require('express')
const { postDataQuery } = require("../../database");
const store = require('store');
const postData = (req, res) => {
  const workout_data = req.body;

  const id =store.get('id')['id'];
  console.log(id);

  postDataQuery(workout_data,id)
    .then(
      () => res.redirect('/workouts')
    )
    .catch((err) => console.log("err:", err));
};


module.exports = postData;
