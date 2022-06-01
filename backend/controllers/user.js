const User = require("../models/user");
const bcrypt = require("bcrypt");

getUserById = async (req, res) => {
  try {
    const user = await User.findById(req.params.id);
    const { password, ...others } = user._doc;
    res.status(200).json(others);
  } catch (err) {
    res.status(500).json(err);
  }
};

deleteUserById = async (req, res) => {
  try {
    const user = await User.findByIdAndDelete(req.params.id);
    const { password, ...others } = user._doc;
    res.status(200).json("User Deleted Successfuly");
  } catch (err) {
    res.status(500).json(err);
  }
};
updateUserById = async (req, res) => {
  try {
    const updatedUser = await User.findByIdAndUpdate(
      req.params.id,
      {
        $set: req.body,
      },
      { new: true }
    );
    res.status(200).json(updatedUser);
  } catch (err) {
    res.status(500).json(err);
  }
};

module.exports = {
  getUserById,
  deleteUserById,
  updateUserById,
};
