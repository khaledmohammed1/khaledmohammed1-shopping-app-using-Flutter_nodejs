const express = require("express");
const app = express();
const dotenv = require("dotenv");
const mongoose = require("mongoose");
const categoryRoute = require("./routes/category");
const productRoute = require("./routes/product");
const authRoute = require("./routes/auth");
const userRoute = require("./routes/user");

dotenv.config();
app.use(express.json());

mongoose
  .connect(process.env.MONGO_URL)
  .then(console.log("Connected to DB"))
  .catch((err) => console.log(err));

app.use("/api/category", categoryRoute);
app.use("/api/product", productRoute);
app.use("/api/auth", authRoute);
app.use("/api/user", userRoute);

const port = process.env.PORT || 3000;

app.listen(port, () => {
  console.log("Backend is running. on port", port);
});
