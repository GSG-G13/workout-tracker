const connection = require('../config/connection');

const addUser = (data) => {
    let { name, password } = data;
    const sql = {
        text: "SELECT user_id FROM  users WHERE name=$1 AND password=$2;",
        values: [name, password],
    };

    return connection.query(sql);
};

module.exports = addUser;