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

  // Assuming `model` is a shared actor with persistence support.
  // This is a simplified example, and you might need to adjust based on your needs.
  public actor {
    shared {
      public func addMessage(message : MessageType) : async Bool;
      public func getAllMessages(from : Text, to : Text) : async [ShowMessageType];
    };
  };
};

