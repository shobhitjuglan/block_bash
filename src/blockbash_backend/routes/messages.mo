// /src/routes/messages.mo

module MessagesRoutes {
  import MessageController "controllers/message";

  public func setup() : async {
    await MessageController.setup();
  };

  public func routes() : async {
    actor {
      // Assuming these endpoints map to the shared actor functions.
      shared {
        public func sendMsg(messageData : MessageController.MessageType) : async Bool;
        public func getAllMsg(from : Text, to : Text) : async [MessageController.ShowMessageType];
      };
    };
  };
};

