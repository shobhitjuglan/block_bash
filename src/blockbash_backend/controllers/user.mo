// /src/users.mo

module Users {
  type User = {
    username: Text;
    email: Text;
    password: Text;
    avatarImage: Text;
    isAvatarImageSet: Bool;
  };

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

  public register : (UserType) -> async Bool;
  public login : (LoginType) -> async Bool;
  public setAvatar : (SetAvatarType) -> async { isSet : Bool; image : Text };
  public getAllUsers : (GetAllUsersType) -> async [User];
};

