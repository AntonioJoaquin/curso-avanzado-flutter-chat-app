import 'package:flutter/material.dart';

class ChatMessage extends StatelessWidget {

  final String uid;
  final String texto;
  final AnimationController animationController;


  const ChatMessage({
    Key key, 
    @required this.uid,
    @required this.texto,
    @required this.animationController
    }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: this.animationController,
      child: SizeTransition(
        sizeFactor: CurvedAnimation(
          parent: this.animationController,
          curve: Curves.elasticOut
        ),
        child: Container(
          child: this.uid == '123'
            ?
          _myMessage()
            :
          _notMyMessage(),
        ),
      ),
    );
  }
                  
    
    Widget _myMessage() {
      return Align(
        alignment: Alignment.centerRight,
        child: Container(
          margin: EdgeInsets.only(
            bottom: 5,
            right: 5,
            left: 50
          ),
          padding: EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            color: Color(0xff4D9EF6),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
              bottomLeft: Radius.circular(20),
            )
          ),
          child: Text(
            this.texto,
            style: TextStyle(color: Colors.white),
          ),
        ),
      );
    }
            
    Widget _notMyMessage() {
      return Align(
        alignment: Alignment.centerLeft,
        child: Container(
          margin: EdgeInsets.only(
            bottom: 5,
            right: 50,
            left: 5
          ),
          padding: EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            color: Color(0xffE4E5E8),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
              bottomRight: Radius.circular(20),
            )
          ),
          child: Text(
            this.texto,
            style: TextStyle(color: Colors.black87),
          ),
        ),
      );
    }

}