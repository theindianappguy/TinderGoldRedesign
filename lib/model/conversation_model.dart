class ConversationModel{

  bool sendByMe;
  String message;

  ConversationModel({this.sendByMe,this.message});

  void setMessage(String s) {
    message = s ;
  }

  void setSendByMe(bool sendByme) {
    sendByMe = sendByme;
  }

  String getMessage(){
    return message;
  }

  bool getSendByMe(){
    return sendByMe;
  }

}