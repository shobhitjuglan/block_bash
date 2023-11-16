// Importing modules
import mongoose "mo:mongoose";

// Creating user schema
type UserSchema = {
  username: Text;
  email: Text;
  password: Text;
  isAvatarImageSet: Bool;
  avatarImage: Text;
};

// Creating model
let User = mongoose.model("User", UserSchema);

// Exporting model
User;
