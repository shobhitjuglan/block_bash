import List "mo:base/List";
import Text "mo:base/Text";
import HashMap "mo:base/HashMap";
import Prim "mo:prim";
import Message "controllers/message";

actor Dkeeper {

  public type UserSchema = {
    username : Text;
    email : Text;
    password : Text;
    isAvatarImageSet : Bool;
    avatarImage : Text;
  };

  public type MessageSchema = {
    message : {
      text : Text;
    };
    users : [Text];
    sender : Text;
  };

  var messages : List.List<MessageSchema> = List.nil<MessageSchema>();

  public func addMessage(from : Text, to : [Text], message : { text : Text }) {
    let message : MessageSchema = {
      message = message;
      users = to;
      sender = from;
    };

  };

  public func getAllMessages(from : Text, to : Text) : async [MessageResponse] {
    let filteredMessages : List.List<MessageSchema> =
      List.filter(
        func(msg : MessageSchema) : Bool {
          return Prim.listContains(msg.users, from) and Prim.listContains(msg.users, to);
        },
        messages
      );

    let sortedMessages : List.List<MessageSchema> =
      List.sortBy(
        func(msg1, msg2) : Bool {
          return msg1.updatedAt < msg2.updatedAt;
        },
        filteredMessages
      );

    let showMessages : [MessageResponse] =
      Array.map(
        func(msg : MessageSchema) : MessageResponse {
          return {
            fromSelf = msg.sender == from;
            message = msg.message.text;
          };
        },
        sortedMessages
      );

    return showMessages;
};

};
