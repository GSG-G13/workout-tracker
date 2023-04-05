const connection = require('../config/connection');

const addUser = (data) => {
    let { name, password } = data;
    const sql = {
        text: "INSERT INTO users(name,password) VALUES($1, $2) returning name,password",
        values: [name, password],
    };

    return connection.query(sql);
};

module.exports = addUser;