class ChatModel{

  String userName;
  String userPicAssetPath;
  String lastMessage;
  String time;
  int unreadMessages;
  bool lastMessageSendByMe;

  ChatModel({this.userName,this.userPicAssetPath,this.lastMessage,
  this.time,this.unreadMessages,this.lastMessageSendByMe});

  void setUserName(String name){
    userName = name;
  }

  void setUserPicAssetPath(String userAssetPath){
    userPicAssetPath = userAssetPath;
  }

  void setLastMessage(String mLastMessage){
    lastMessage = mLastMessage;
  }

  void setTime(String mTime){
    time = mTime;
  }

  void setUnreadMessage(int mUnreadMessages){
    unreadMessages = mUnreadMessages;
  }

  void setLastMessageSendByMe(bool islastMessageSendByMe){
    lastMessageSendByMe = islastMessageSendByMe;
  }

  String getUserName(){
    return userName;
  }

  String getUserPicAssetPath(){
    return userPicAssetPath;
  }

  String getLastMessage(){
    return lastMessage;
  }

  String getTme(){
    return time;
  }

  int getUnreadMessages(){
    return unreadMessages;
  }

  bool getlastMessageSendByMe(){
    return lastMessageSendByMe;
  }

}