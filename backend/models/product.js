const mongoose = require("mongoose");

const ProductSchema = new mongoose.Schema(
  {
    ProductName: {
      type: String,
      required: true,
      unique: true,
    },
    ProductDesc: {
      type: String,
      required: true,
    },
    ProductPrice: {
      type: String,
      required: false,
    },
    ProductImage: {
      type: String,
      required: false,
      default:"",
    },
    category: {
      type:String,
      required: true,
    },
  },
  { timestamps: true }
);

module.exports = mongoose.model("Product", ProductSchema);
