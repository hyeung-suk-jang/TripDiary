require("dotenv").config();
const express = require("express");
const bodyParser = require("body-parser");
const paginate = require("express-paginate");
const path = require("path");
const cors = require("cors");

const db = require("./models");

const app = express();
const port = 8000;

// DB authentication
db.sequelize
    .authenticate()
    .then(() => {
        console.log("Connection has been established successfully.");
        //return db.sequelize.sync();
        //return db.sequelize.drop();
    })
    .then(() => {
        console.log("DB Sync complete.");
    })
    .catch((err) => {
        console.error("Unable to connect to the database:", err);
    });

// Middleware
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: false }));
app.use(cors());
app.use(paginate.middleware(10, 50));

// Static
// localhost:8000/uploads/background.jpg
app.use("/uploads", express.static(path.resolve(__dirname, "uploads")));
app.use("/images", express.static(path.resolve(__dirname, "images")));

// Routes
app.use(require("./routes"));


// api
app.use(require('./api'));


app.listen(port, () => {
    console.log("express listening on port", port);
});
