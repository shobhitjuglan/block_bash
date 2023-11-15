module Users {
  public type UserType = {
    username: Text;
    email: Text;
    password: Text;
  };

  public type LoginType = {
    username: Text;
    password: Text;
  };

  public type SetAvatarType = {
    id: Text;
    image: Text;
  };

  public type GetAllUsersType = {
    id: Text;
  };

  // Assuming `model` is a shared actor with persistence support.
  // This is a simplified example, and you might need to adjust based on your needs.
  public actor {
    shared {
      public func register(user : UserType) : async Bool;
      public func login(loginData : LoginType) : async Bool;
      public func setAvatar(setAvatarData : SetAvatarType) : async { isSet : Bool; image : Text };
      public func getAllUsers(getAllUsersData : GetAllUsersType) : async [UserType];
    };
  };
};

