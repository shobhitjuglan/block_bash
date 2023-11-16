// Importing modules
import express "mo:express";
import userController "controllers/user";

// Creating router
let router = express.Router();

// Defining routes
router.post("/register", userController.register);
router.post("/login", userController.login);
router.post("/setAvatar/:id", userController.setAvatar);
router.get("/allUsers/:id", userController.getAllUsers);

// Exporting router
router;
