// Importing modules
import express "mo:express";
import messageController "../controllers/message";

// Creating router
let router = express.Router();

// Defining routes
router.post("/sendMsg", messageController.addMessage);
router.post("/getAllMsg", messageController.getAllMessages);

// Exporting router
router;
