require('env2')('.env');
const { Pool } = require('pg');

const { DB_URL } = process.env;
console.log(DB_URL);
const connection = new Pool({
    connectionString: DB_URL,
    ssl: true,
})

module.exports = connection;

