const express = require("express");
const app = express();

const PORT = 4000;

app.get("/", (req, res) => {
  res.send("🔥 Auto Deployment Works!");
});

app.listen(PORT, () => {
  console.log(`Server running on port ${PORT}`);
});
