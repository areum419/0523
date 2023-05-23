import express from "express"
import cors from "cors"
import morgan from "morgan"
import bodyParser from "body-parser"

import dotenv from "dotenv"
dotenv.config()

import connectDB from "./config/database.js"

const app = express();
connectDB();

app.use(cors());
app.use(morgan("dev"));

app.get("/", (req, res) => {
    res.json({
        msg: "server start!!!"
    })
})

app.use(bodyParser.json());
app.use(bodyParser.urlencoded({extended : false}))


const port = process.env.PORT || 9091


app.listen(port, console.log(`-----> server started at ${port}`));