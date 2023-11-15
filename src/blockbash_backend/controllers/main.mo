// /src/controllers/main.mo

import MessageController "controllers/message";
import UserController "controllers/user";

public func setup() : async {
  // Initialize any setup logic for controllers.
  await MessageController.setup();
  await UserController.setup();
};

// This is where you might define any shared logic or initialization for the controllers.

