const router = require("express").Router();
const productController = require("../controllers/product");

//CREATE Product
router.post("/", productController.createProduct);

//UPDATE Product
router.put("/:id", productController.updateProduct);

//DELETE Product
router.delete("/:id", productController.deleteProduct);

//GET Product
router.get("/:id", productController.getProductById);

//GET ALL Product
router.get("/", productController.getAllProduct);
router.get("/", productController.getProductById);

module.exports = router;
