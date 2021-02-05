import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards'),
      ),
      body: ListView(
        children: <Widget>[
          _cardTipo1(),
          SizedBox(height: 30.0),
          _cardTipo2(),
          SizedBox(height: 30.0),
          _cardTipo1(),
          SizedBox(height: 30.0),
          _cardTipo2(),
          _cardTipo1(),
          SizedBox(height: 30.0),
          _cardTipo2(),
          _cardTipo1(),
          SizedBox(height: 30.0),
          _cardTipo2(),
        ],
        padding: EdgeInsets.all(10.0),
      ),
    );
  }

  _cardTipo1() {
    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(
              Icons.photo_album,
              color: Colors.blue,
              size: 40.0,
            ),
            title: Text('Soy el título de la Card'),
            subtitle: Text(
                'Lorem Ipsum is simply dummy text of the printing and typesetting '
                'industry. Lorem Ipsum has been the industry\'s standard dummy '
                'text ever since the 1500s.'),
          ),
          Divider(
              height: 2.0, color: Colors.blue, indent: 20.0, endIndent: 10.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FlatButton(
                onPressed: () {},
                child: Text('Cancel'),
                color: Colors.red,
              ),
              SizedBox(
                width: 10.0,
              ),
              FlatButton(
                onPressed: () {},
                child: Text('Ok'),
                color: Colors.green,
              ),
              SizedBox(
                width: 10.0,
              ),
            ],
          )
        ],
      ),
    );
  }

  _cardTipo2() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        color: Colors.black38,
        boxShadow: <BoxShadow>[
          BoxShadow(
              color: Colors.black26,
              blurRadius: 10.0,
              spreadRadius: 2.0,
              offset: Offset(0.0, -10.0)),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30.0),
        child: Container(
          child: Column(
            children: <Widget>[
              FadeInImage(
                placeholder: AssetImage('images/jar-loading.gif'),
                fadeInDuration: Duration(milliseconds: 200),
                height: 300.0,
                fit: BoxFit.cover,
                image: NetworkImage(
                    'https://texashillcountry.com/wp-content/uploads/Gfp-texas-big-bend-national-park-overview-of-the-rio-grande-at-dusk-2.jpg'),
              ),
              Container(
                child: Text(
                  'Texas Hill Country',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                padding: EdgeInsets.all(20.0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
