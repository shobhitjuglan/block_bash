// /src/routes/main.mo

import MessagesRoutes "routes/messages";
import UsersRoutes "routes/users";

public func setup() : async {
  // Initialize any setup logic for routes.
  await MessagesRoutes.setup();
  await UsersRoutes.setup();
};

// This is where you might define any shared logic or initialization for the routes.

