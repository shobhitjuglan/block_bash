// Importing modules
import mongoose "mo:mongoose";

// Creating message schema
type MessageSchema = {
  message: {
    text: Text;
  };
  users: [Text];
  sender: Text;
};

// Creating model
let Message = mongoose.model("Message", MessageSchema);

// Exporting model
Message;
