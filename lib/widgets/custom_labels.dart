import 'package:flutter/material.dart';

class Labels extends StatelessWidget {

  final String messageQuestion;
  final String messageLink;
  final String ruta;


  const Labels({
    Key key, 
    @required this.messageQuestion,
    @required this.messageLink,
    @required this.ruta
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            this.messageQuestion, 
            style: TextStyle(
              color: Colors.black54, 
              fontSize: 15, 
              fontWeight: FontWeight.w300
            ),
          ),
          SizedBox(
            height: 10,
          ),
          GestureDetector(
            child: Text(
              this.messageLink, 
              style: TextStyle(
                color: Colors.blue[600], 
                fontSize: 18, 
                fontWeight: FontWeight.bold
              ),
            ),
            onTap: () {
              Navigator.pushReplacementNamed(context, this.ruta);
            },
          )
        ],
      ),
    );
  }
  
}