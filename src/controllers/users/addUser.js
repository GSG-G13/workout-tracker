const express = require('express')
const { addUserQuery } = require("../../database/queries");

const addUser = (req, res) => {
    const user_data = req.body;

    addUserQuery(user_data)
        .then(data=>data.rows)
        .then( (data) => {
            console.log(data, "jj");
            res.redirect(`/workouts`);
        })
        .catch((err) => console.log("err:", err));
};
module.exports = addUser;

