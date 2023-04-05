const express = require('express')
const { addUserQuery } = require("../../database/queries");

const addUser = (req, res) => {
    const user_data = req.body;

    addUserQuery(user_data)
        .then(
            () => res.redirect('/')
        )
        .catch((err) => console.log("err:", err));
};
module.exports = addUser;
