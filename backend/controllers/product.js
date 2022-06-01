const Category = require("../models/category");
const Product = require("../models/product");

createProduct = async (req, res) => {
  const category = await Category.findById(req.body.category);
  if (!category) return res.status(400).send("Invalid category");
  const newProduct = new Product(req.body);
  try {
    const savedProduct = await newProduct.save();
    res.status(200).json(savedProduct);
  } catch (err) {
    res.status(500).json(err);
  }
};

getAllProduct = async (req, res) => {
  try {
    const category = req.query.category;
    if (category) {
      let products = await Product.find({ category }).populate("category");
      res.status(200).json(products);
    } else {
      let products = await Product.find().populate("category");
      res.status(200).json(products);
    }
  } catch (err) {
    res.status(500).json(err);
  }
};

getProductByCategory = async (req, res) => {
  try {
    const category = req.query.category;
    console.log(req.query.category);
    let products = await Product.find({ category }).populate("category");
    res.status(200).json(products);
  } catch (err) {
    res.status(500).json(err);
  }
};

getProductById = async (req, res) => {
  try {
    const product = await Product.findById(req.params.id);
    res.status(200).json(product);
  } catch (err) {
    res.status(500).json(err);
  }
};

deleteProduct = async (req, res) => {
  const product = await Product.findById(req.params.id);
  try {
    await product.delete();
    res.status(200).json("Product has been deleted...");
  } catch (err) {
    res.status(500).json(err);
  }
};

updateProduct = async (req, res) => {
  try {
    const updatedProduct = await Product.findByIdAndUpdate(
      req.params.id,
      {
        $set: req.body,
      },
      { new: true }
    );
    res.status(200).json(updatedProduct);
  } catch (err) {
    res.status(500).json(err);
  }
};

module.exports = {
  createProduct,
  getAllProduct,
  getProductById,
  deleteProduct,
  updateProduct,
};
