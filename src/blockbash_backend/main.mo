import Nat "mo:base/Nat";
// // /src/main.mo

// import Messages;
// import Users;

// module Main {

//   public shared({Messages, Users});

//   actor {

//     public shared ({Messages, Users});

//     public func addMessage(message : Messages.MessageType) : async Bool {
//       return Messages.addMessage(message);
//     };

//     public func getAllMessages(from : Text, to : Text) : async [Messages.ShowMessageType] {
//       return Messages.getAllMessages(from, to);
//     };

//     public func register(user : Users.UserType) : async Bool {
//       return Users.register(user);
//     };

//     public func login(loginData : Users.LoginType) : async Bool {
//       return Users.login(loginData);
//     };

//     public func setAvatar(setAvatarData : Users.SetAvatarType) : async { isSet : Bool; image : Text } {
//       return Users.setAvatar(setAvatarData);
//     };

//     public func getAllUsers(getAllUsersData : Users.GetAllUsersType) : async [Users.User] {
//       return Users.getAllUsers(getAllUsersData);
//     };
//   };
// };
// /src/main.mo

// /src/main.mo

import MessagesRoutes "routes/messages";
import UsersRoutes "routes/users";
import Http "mo:http";

actor Main {

  public func setup() : async{
    // Initialize any global setup logic for your application.
    await MessagesRoutes.setup();
    await UsersRoutes.setup();
  };

  public func start() : async{
    // Start your HTTP server.
    let server = Http.Server.basic(
      { port: 8080, address: Http.IpAddress.fromString("127.0.0.1") },
      MessagesRoutes.routes() ~ UsersRoutes.routes()
    );
    await Http.Server.start(server);
  };

  public func main() : async {
    await setup();
    await start();
  };
};
