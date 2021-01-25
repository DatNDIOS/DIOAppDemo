import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);

  @override
  Widget build(BuildContext context) {
    final loginAppleButton = RaisedButton(
      onPressed: () {},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image(
              image: AssetImage('assets/images/IconApple.png'),
              height: 15.0,
              fit: BoxFit.fitHeight),
          SizedBox(width: 10.0),
          Text('Login with Apple',
              style: TextStyle(fontSize: 20.0, color: Colors.white))
        ],
      ),
      shape:
          RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
      color: Colors.black,
    );

    final loginFacebookButton = RaisedButton(
      onPressed: () {},
      child: const Text('Facebook',
          style: TextStyle(fontSize: 20.0, color: Colors.white)),
      shape:
          RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
      color: Color.fromRGBO(30, 86, 42, 1),
    );

    final loginGoogleButton = RaisedButton(
      onPressed: () {},
      child: const Text('Google',
          style: TextStyle(fontSize: 20, color: Color.fromRGBO(30, 86, 42, 1))),
      shape: RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(30.0),
          side: BorderSide(color: Color.fromRGBO(30, 86, 42, 1))),
      color: Colors.white,
    );

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: new Stack(
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                  color: Colors.red,
                  padding: EdgeInsets.all(10.0),
                  child: Container(
                    color: Colors.white,
                    child: Padding(
                      padding: EdgeInsets.all(0.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            child: new Stack(
                              alignment: Alignment.center,
                              children: <Widget>[
                                Image(
                                    image: AssetImage(
                                        "assets/images/Background@2x.png"),
                                    fit: BoxFit.contain),
                                Container(
                                  margin: EdgeInsets.all(50.0),
                                  child: Image(
                                      image: AssetImage(
                                          "assets/images/ImageHome@2x.png"),
                                      fit: BoxFit.contain),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(
                                20.0, 10.0, 20.0, 10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                SizedBox(height: 15.0),
                                Container(
                                  child: Text(
                                    'Truyện Cổ Tích Audio',
                                    style: TextStyle(
                                        fontFamily: 'Pacifico', fontSize: 24.0),
                                  ),
                                ),
                                SizedBox(height: 15.0),
                                Container(
                                  width: 320.0,
                                  height: 44.0,
                                  child: loginAppleButton,
                                ),
                                SizedBox(height: 15.0),
                                Container(
                                  width: 320.0,
                                  height: 44.0,
                                  child: loginFacebookButton,
                                ),
                                SizedBox(
                                  height: 15.0,
                                ),
                                Container(
                                    width: 320.0,
                                    height: 44.0,
                                    child: loginGoogleButton),
                                SizedBox(
                                  height: 15.0,
                                ),
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(bottom: 15),
                            alignment: FractionalOffset.bottomCenter,
                            child: Text.rich(TextSpan(children: <TextSpan>[
                              TextSpan(
                                  text: 'Điều khoản',
                                  style: TextStyle(color: Colors.red)),
                              TextSpan(text: ' người dùng và'),
                              TextSpan(
                                  text: ' Bảo mật',
                                  style: TextStyle(color: Colors.red)),
                              TextSpan(text: ' thông tin')
                            ])),
                          )
                        ],
                      ),
                    ),
                  ))
            ],
          )
        ],
      ),
    );
  }
}
