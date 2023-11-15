// /src/routes/users.mo

module UsersRoutes {
  import UserController "controllers/user";

  public func setup() : async {
    await UserController.setup();
  };

  public func routes() : async {
    actor {
      // Assuming these endpoints map to the shared actor functions.
      shared {
        public func register(userData : UserController.UserType) : async Bool;
        public func login(loginData : UserController.LoginType) : async Bool;
        public func setAvatar(setAvatarData : UserController.SetAvatarType) : async { isSet : Bool; image : Text };
        public func getAllUsers(getAllUsersData : UserController.GetAllUsersType) : async [UserController.UserType];
      };
    };
  };
};

