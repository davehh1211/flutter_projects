import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  // const AlertPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar Page'),
        actions: <Widget>[
          Container(
            padding: EdgeInsets.all(5.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://www.premiosfronterasdelconocimiento.es/wp-content/uploads/sites/2/2017/05/FBBVA-15-ciencia-Stephen-Hawking.jpg'),
              radius: 25.0,
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              child: Text('SL'),
              backgroundColor: Colors.blue,
            ),
          )
        ],
      ),
      body: Center(
        child: FadeInImage(
          placeholder: AssetImage('assets/jar-loading.gif'),
          image: NetworkImage(
              'https://www.biography.com/.image/t_share/MTY2MzU1NDM3Mzg4NTcyMzM0/stephen-hawking-on-october-10-1979-in-princeton-new-jersey-photo-by-santi-visalligetty-images.jpg'),
          fadeInDuration: Duration(milliseconds: 200),
        ),
      ),
    );
  }
}
