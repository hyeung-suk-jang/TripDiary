let Sequelize = require("sequelize");
let path = require("path");
let fs = require("fs");

/*
let DATABASE = "tripsoda"
let DB_USER = "root"
let DB_PASSWORD = "mangoo8"
let DB_HOST = "localhost"
*/

const sequelize = new Sequelize(
    process.env.DATABASE,
    process.env.DB_USER,
    process.env.DB_PASSWORD,
    {
        host: process.env.DB_HOST,
        dialect: "mysql",
        timezone: "+09:00", //한국 시간 셋팅
        logging: false,
        //operatorsAliases: false,
        // operatorsAliases: Sequelize.Op,
        pool: {
            max: 5,
            min: 0,
            idle: 10000,
        },
    }
);

let db = {};
fs.readdirSync(__dirname)
    .filter((file) => {
        return file.indexOf(".js") && file !== "index.js";
    })
    .forEach((file) => {
        // let model = sequelize['import'](path.join(__dirname, file));
        let model = require(path.join(__dirname, file))(sequelize, Sequelize.DataTypes)
        db[model.name] = model;
    });

Object.keys(db).forEach((modelName) => {
    if ("associate" in db[modelName]) {
        db[modelName].associate(db);
    }
});

db.sequelize = sequelize;
db.Sequelize = Sequelize;

module.exports = db;
