const router = require("express").Router();
const userController = require("../controllers/user");

//UPDATE
router.put("/:id",userController.updateUserById);

//DELETE
router.delete("/:id", userController.deleteUserById);

//GET USER
router.get("/:id", userController.getUserById);

module.exports = router;
