const express = require("express");
const fs = require("fs");
const app = express();

app.get("/", (req, res) => {
  const data = fs.readFileSync("/data/message.txt", "utf8");
  res.send("Message: " + data);
});

app.listen(3000, () => console.log("Running on port 3000"));
