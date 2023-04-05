require('env2')('.env');
const { log } = require('console');
const { Pool } = require('pg');

const { DB_URL } = process.env;
console.log(DB_URL);
const connection = new Pool({
    connectionString: DB_URL,
    ssl: false,
})

module.exports = connection;

