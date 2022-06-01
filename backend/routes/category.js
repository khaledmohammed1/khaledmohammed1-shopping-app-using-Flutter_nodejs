const router = require("express").Router();
const categoryController = require("../controllers/category");

router.post("/", categoryController.createNewCategory);

router.get("/", categoryController.getAllCategory);

module.exports = router;
