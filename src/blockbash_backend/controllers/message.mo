// /src/messages.mo

module Messages {
  type Message = {
    text: Text;
  };

  type User = Text;

  public type MessageType = {
    message: Message;
    users: [User, User];
    sender: User;
  };

  public type ShowMessageType = {
    fromSelf: Bool;
    message: Text;
  };

  public addMessage : (MessageType) -> async Bool;
  public getAllMessages : (User, User) -> async [ShowMessageType];
};

