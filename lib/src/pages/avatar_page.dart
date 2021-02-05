import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[600],
      appBar: AppBar(
        backgroundColor: Colors.grey[800],
        title: Text('Avatar Page'),
        actions: <Widget>[
          CircleAvatar(
            backgroundColor: Colors.grey,
            backgroundImage: NetworkImage(
                'https://pngimg.com/uploads/mr_bean/mr_bean_PNG40.png'),
          ),
          SizedBox(width: 10.0),
          Container(
            margin: EdgeInsets.only(
              right: 10.0,
            ),
            child: CircleAvatar(
              backgroundColor: Colors.green,
              child: Text(
                'LC',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.all(30.0),
          child: FadeInImage(
            image: NetworkImage(
                'https://www.thesun.co.uk/wp-content/uploads/2019/06/NINTCHDBPICT000000070464-1.jpg'),
            placeholder: AssetImage('images/jar-loading.gif'),
            fadeInDuration: Duration(
              milliseconds: 400,
            ),
          ),
        ),
      ),
    );
  }
}
