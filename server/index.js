const express = require('express');
const mongoose = require("mongoose");
const port = 3000
const app = express();
const cors = require("cors");
app.use(cors());
app.use(express.json());
const DB = "mongodb+srv://shreyasnarule:SWX0KxpHpxLAPAzX@cluster0.c8mt5pr.mongodb.net/?retryWrites=true&w=majority";
const authRouter = require('./routes/auth');
app.use(authRouter)
mongoose.connect(DB).then(() => {
    console.log("Database connected successfully");
}).catch((err) => {
    console.log(err.message);
})

app.listen(port, "0.0.0.0",() => {
    console.log(`Listening on port: ${port}`);
});
//SWX0KxpHpxLAPAzX