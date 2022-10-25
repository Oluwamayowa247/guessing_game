const express = require("express");
var http = require("http");
const app = express();
const port = process.env.PORT || 3000;
var server = http.createServer(app);
const mongoose = require("mongoose");
//creating a socket server
var io = require("socket.io")(server);

//middleware
app.use(express.json());

//connect to database

const DB =
  "mongodb+srv://mayourwa:mayowa1234@cluster0.by1xsbt.mongodb.net/?retryWrites=true&w=majority";
mongoose
  .connect(DB)
  .then(() => {
    console.log("Sope Otilor!");
  })
  .catch((e) => {
    console.log(e);
  });

server.listen(port, "0.0.0.0", () => {
  console.log("Server up and running on port " + port);
});
