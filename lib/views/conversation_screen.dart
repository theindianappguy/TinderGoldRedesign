import 'package:flutter/material.dart';
import 'package:tinder_clone/model/conversation_model.dart';

class ConversationScreen extends StatefulWidget {
  final String name, profilePicPath;

  ConversationScreen({this.name, this.profilePicPath});

  @override
  _ConversationScreenState createState() => _ConversationScreenState();
}

class _ConversationScreenState extends State<ConversationScreen> {
  int tabSelected = 3;
  List<ConversationModel> conversations = new List<ConversationModel>();

  var textController = new TextEditingController();

  String myAwesomeMessage = "";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    /// just adding three predifined messages
    ConversationModel conversationModel = new ConversationModel();
    conversationModel.setMessage("Lorem ipsum dolor sit amet");
    conversationModel.setSendByMe(false);
    conversations.add(conversationModel);

    ConversationModel conversationModel2 = new ConversationModel();
    conversationModel2.setMessage("Lorem ipsum dolor sit amet consectetur "
        "adipiscing elit, sed do eiusmod tempor");
    conversationModel2.setSendByMe(false);
    conversations.add(conversationModel2);

    ConversationModel conversationModel3 = new ConversationModel();
    conversationModel3.setMessage("Lorem ipsum dolor sit amet");
    conversationModel3.setSendByMe(true);
    conversations.add(conversationModel3);

    print(conversations.toString() + "data");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [
                    const Color(0xff213A50),
                    const Color(0xff071930)
                  ],
                      begin: FractionalOffset.topLeft,
                      end: FractionalOffset.bottomRight)),
            ),
            LayoutBuilder(builder:
                (BuildContext context, BoxConstraints viewportConstraints) {
              return SingleChildScrollView(
                  child: ConstrainedBox(
                constraints: BoxConstraints(
                  minHeight: viewportConstraints.maxHeight,
                ),
                child: Column(
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
                      child: Column(
                        children: <Widget>[
                          /// Header ///
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 25, vertical: 8),
                            child: Column(
                              children: <Widget>[
                                Container(
                                  height: 0.2,
                                  color: Colors.white70,
                                ),
                                SizedBox(
                                  height: 16,
                                ),
                                Row(
                                  children: <Widget>[
                                    Container(
                                      width: 60.0,
                                      height: 60.0,
                                      decoration: new BoxDecoration(
                                        color: const Color(0xff213A50),
                                        image: new DecorationImage(
                                          image:
                                              AssetImage(widget.profilePicPath),
                                          fit: BoxFit.cover,
                                        ),
                                        borderRadius: new BorderRadius.all(
                                            new Radius.circular(30.0)),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 16,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text(
                                          widget.name,
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 20,
                                              fontWeight: FontWeight.w400),
                                        ),
                                        SizedBox(
                                          height: 4,
                                        ),
                                        Text(
                                          "Online",
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.white70),
                                        ),
                                        // TODO add Spacer(),
                                      ],
                                    ),
                                    Spacer(),
                                    Container(
                                        padding: EdgeInsets.all(15),
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(60),
                                            gradient: LinearGradient(
                                                colors: [
                                                  const Color(0xffA2834D),
                                                  const Color(0xffBC9A5F)
                                                ],
                                                begin:
                                                    FractionalOffset.topRight,
                                                end: FractionalOffset
                                                    .bottomLeft)),
                                        child: Image.asset(
                                          "assets/images/call_icon.png",
                                          width: 20,
                                          height: 20,
                                        )),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),

                          /// ----
                          ListView.builder(
                              itemCount: conversations.length,
                              scrollDirection: Axis.vertical,
                              shrinkWrap: true,
                              itemBuilder: (context, index) {
                                return ConversationTile(
                                  sendByMe: conversations[index].getSendByMe(),
                                  message: conversations[index].getMessage(),
                                );
                              })
                        ],
                      ),
                    )
                  ],
                ),
              ));
            }),
            Container(
              height: MediaQuery.of(context).size.height,
              alignment: Alignment.bottomLeft,
              child: Container(
                color: Color(0x54FFFFFF),
                padding: EdgeInsets.symmetric(vertical: 23, horizontal: 16),
                child: Row(
                  children: <Widget>[
                    Container(
                      child: Image.asset(
                        "assets/images/smiley.png",
                        width: 25,
                        height: 25,
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          gradient: LinearGradient(
                              colors: [
                                const Color(0x36FFFFFF),
                                const Color(0x0FFFFFFF)
                              ],
                              begin: FractionalOffset.topLeft,
                              end: FractionalOffset.bottomRight)),
                      padding: EdgeInsets.all(10),
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(right: 16),
                        child: TextField(
                          controller: textController,
                          style: TextStyle(color: Colors.white, fontSize: 15),
                          decoration: InputDecoration(
                            hintText: "Message ...",
                            hintStyle:
                            TextStyle(color: Colors.white, fontSize: 15),
                          ),
                          maxLines: 1,
                        ),
                      ),
                    ),
                    Container(
                      child: Image.asset(
                        "assets/images/microphone.png",
                        width: 25,
                        height: 25,
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          gradient: LinearGradient(
                              colors: [
                                const Color(0x36FFFFFF),
                                const Color(0x0FFFFFFF)
                              ],
                              begin: FractionalOffset.topLeft,
                              end: FractionalOffset.bottomRight)),
                      padding: EdgeInsets.all(10),
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          myAwesomeMessage = textController.text;
                          print("pajji aee lo"+ myAwesomeMessage);
                          ConversationModel conversatModel3 =
                              new ConversationModel();
                          conversatModel3.setMessage(myAwesomeMessage);
                          conversatModel3.setSendByMe(true);
                          conversations.add(conversatModel3);
                          FocusScope.of(context).unfocus();
                          textController.text = "";
                        });
                      },
                      child: Container(
                        child: Image.asset(
                          "assets/images/send.png",
                          width: 23,
                          height: 23,
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            gradient: LinearGradient(
                                colors: [
                                  const Color(0xffA2834D),
                                  const Color(0xffBC9A5F)
                                ],
                                begin: FractionalOffset.topRight,
                                end: FractionalOffset.bottomLeft)),
                        padding: EdgeInsets.all(10),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ConversationTile extends StatelessWidget {
  final bool sendByMe;
  final String message;

  ConversationTile({this.sendByMe, this.message});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8),
      alignment: sendByMe ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        margin:
            sendByMe ? EdgeInsets.only(left: 30) : EdgeInsets.only(right: 30),
        padding: EdgeInsets.only(top: 17, bottom: 17, left: 20, right: 20),
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: sendByMe
                    ? [const Color(0xffD9B372), const Color(0xffA2834D)]
                    : [const Color(0x1AFFFFFF), const Color(0x1AFFFFFF)],
                begin: FractionalOffset.centerLeft,
                end: FractionalOffset.centerRight),
            borderRadius: sendByMe
                ? BorderRadius.only(
                    topLeft: Radius.circular(23),
                    bottomLeft: Radius.circular(23))
                : BorderRadius.only(
                    topRight: Radius.circular(23),
                    bottomRight: Radius.circular(23))),
        child: Text(
          message,
          textAlign: TextAlign.start,
          style: TextStyle(
              color: Colors.white, fontSize: 14, fontWeight: FontWeight.w300),
        ),
      ),
    );
  }
}
