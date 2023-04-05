const express=require('express')
const {getDataQuery} = require("../../database/queries");

const getData = (req,res)=>{
 getDataQuery().then(data=>res.json(data.rows)).then(err => console.log("err:", err))
}

module.exports = getData;

