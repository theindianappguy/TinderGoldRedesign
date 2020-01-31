import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tinder_clone/views/conversation_screen.dart';

class ChatScreen extends StatelessWidget {
  int tabSelected = 3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [const Color(0xff213A50), const Color(0xff071930)],
                    begin: FractionalOffset.topLeft,
                    end: FractionalOffset.bottomRight)),
          ),
          Column(
            children: <Widget>[
              SizedBox(
                height: 90,
              ),

              /// Tab Options ///
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Container(
                          padding: EdgeInsets.all(10),
                          decoration: tabSelected == 1
                              ? BoxDecoration(
                                  borderRadius: BorderRadius.circular(60),
                                  gradient: LinearGradient(
                                      colors: [
                                        const Color(0xffA2834D),
                                        const Color(0xffBC9A5F)
                                      ],
                                      begin: FractionalOffset.topRight,
                                      end: FractionalOffset.bottomLeft))
                              : BoxDecoration(),
                          child: Image.asset(
                            "assets/images/profile.png",
                            width: 35,
                            height: 35,
                          )),
                      SizedBox(
                        height: 16,
                      ),
                      Text(
                        "Chat",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 60,
                  ),
                  Column(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: tabSelected == 1
                            ? BoxDecoration(
                                borderRadius: BorderRadius.circular(60),
                                gradient: LinearGradient(
                                    colors: [
                                      const Color(0xffA2834D),
                                      const Color(0xffBC9A5F)
                                    ],
                                    begin: FractionalOffset.topRight,
                                    end: FractionalOffset.bottomLeft))
                            : BoxDecoration(),
                        child: Image.asset(
                          "assets/images/tindergoldlogo.png",
                          width: 35,
                          height: 35,
                        ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Text(
                        "Pairs",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 60,
                  ),
                  Column(
                    children: <Widget>[
                      Container(
                          padding: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(60),
                              gradient: LinearGradient(
                                  colors: [
                                    const Color(0xffA2834D),
                                    const Color(0xffBC9A5F)
                                  ],
                                  begin: FractionalOffset.topRight,
                                  end: FractionalOffset.bottomLeft)),
                          child: Image.asset(
                            "assets/images/chatbubble.png",
                            width: 30,
                            height: 30,
                          )),
                      SizedBox(
                        height: 16,
                      ),
                      Text(
                        "Activities",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 16,
              ),

              Container(
                padding: EdgeInsets.symmetric(horizontal: 25, vertical: 8),
                child: Column(
                  children: <Widget>[
                    Container(
                      height: 0.2,
                      color: Colors.white70,
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    ChatTile(
                      userName: "Sanskar",
                      userPicAssetPath: "assets/images/profilepic.jpg",
                      lastMessage: "This is strange i can send message to myself",
                      time: "2 hours",
                      unreadMessages: 4,
                      lastMessageSendByMe: false,
                    ),
                    ChatTile(
                      userName: "Jessica",
                      userPicAssetPath: "assets/images/profilepic2.png",
                      lastMessage: "Hahaha, yeah!",
                      time: "2 hours",
                      unreadMessages: 0,
                      lastMessageSendByMe: true,
                    ),
                    ChatTile(
                      userName: "Adrianne",
                      userPicAssetPath: "assets/images/profilepic3.png",
                      lastMessage: "Let's catch up sometime sanskar",
                      time: "2 hours",
                      unreadMessages: 11,
                      lastMessageSendByMe: false,
                    ),
                    ChatTile(
                      userName: "Marlene",
                      userPicAssetPath: "assets/images/profilepic4.png",
                      lastMessage: "Hey Sanskar how are you?",
                      time: "2 hours",
                      unreadMessages: 1,
                      lastMessageSendByMe: false,
                    ),
                    ChatTile(
                      userName: "Samanta",
                      userPicAssetPath: "assets/images/profilepic5.png",
                      lastMessage: "That's awesome sanskar",
                      time: "2 hours",
                      unreadMessages: 0,
                      lastMessageSendByMe: false,
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    ));
  }
}

class ChatTile extends StatelessWidget {

  final String userName, userPicAssetPath, lastMessage, time;
  int unreadMessages = 0;
  bool lastMessageSendByMe = false;
  ChatTile({this.userName,this.userPicAssetPath,this.lastMessage,this.time,
    this.unreadMessages,this.lastMessageSendByMe});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(
            builder: (context) => ConversationScreen(
              name: userName,
              profilePicPath: userPicAssetPath,
            )
        ));
      },
      child: Container(
        padding: EdgeInsets.only(bottom: 16),
        width: MediaQuery.of(context).size.width,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              width: 70.0,
              height: 70.0,
              decoration: new BoxDecoration(
                color: const Color(0xff213A50),
                image: new DecorationImage(
                  image: AssetImage(userPicAssetPath),
                  fit: BoxFit.cover,
                ),
                borderRadius: new BorderRadius.all(new Radius.circular(40.0)),
                border: unreadMessages > 0 ? Border.all(
                  color: Color(0xffD9B372),
                  width: 2.0,
                ):null,
              ),
            ),
            SizedBox(width: 16,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment:  MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(height: 8,),
                Container(
                  width: MediaQuery.of(context).size.width - 136,
                  alignment: Alignment.topLeft,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        userName,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                        fontWeight: FontWeight.w400),
                      ),
                      SizedBox(width: 6,),
                      unreadMessages > 0 ? Row(
                        children: <Widget>[
                          Container(
                            width: 6,
                            height: 6,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xffD9B372),
                            ),
                          ),
                          SizedBox(width: 6,),
                          Text(
                            "$unreadMessages",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 14),
                          ),
                        ],
                      ):Container(),
                      // TODO add Spacer(),
                      Spacer(),
                      Text(time, style: TextStyle(
                          fontSize: 12,
                          color: Colors.white70
                      ),),
                    ],
                  ),
                ),
                SizedBox(height: 8,),
                Row(
                  children: <Widget>[
                    lastMessageSendByMe ? Row(
                      children: <Widget>[
                        Image.asset(
                          "assets/images/back_arrow.png",width: 14,height: 14,),
                        SizedBox(width: 8,),
                      ],
                    ):Container(),
                    Container(
                      width: MediaQuery.of(context).size.width - 158,
                      child: Text(lastMessage,maxLines: 3, style: TextStyle(
                        fontSize: 14,
                        color: unreadMessages > 0 ? Colors.white : Colors.white70,
                      ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20,),
                Container(width: MediaQuery.of(context).size.width - 136,
                  height: 0.2,
                  color: Colors.white70,),
                SizedBox(height: 8,)
              ],
            )
          ],
        ),
      ),
    );
  }
}

///
