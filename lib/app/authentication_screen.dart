import 'package:flutter/material.dart';
import 'login_screen.dart';
import 'signup_screen.dart';

//class LoginScreen extends StatelessWidget {
//  LoginScreen({Key key, this.title}) : super(key: key);
//
//  final String title;
//
//  @override
//  Widget build(BuildContext context) {
//    return AuthenticationScreen();
//  }
//}

class AuthenticationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[
      Container(
        color: Colors.white,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              children: <Widget>[
                Expanded(
                  child: Image.asset('assets/images/mayfair_logo_cropped.png',
                      width: 250),
                ),
                SizedBox(height: 20),
                MaterialButton(
                  onPressed: () {
                    print('Twitter Sign-in button tappped');
                  },
                  color: Color(0xff4CA0EB),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image.asset(
                        'assets/images/twitter.png',
                        width: 24,
                        height: 24,
                      ),
                      SizedBox(width: 10),
                      Text(
                        'Sign-in with Twitter',
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ],
                  ),
                  height: 50,
                  minWidth: double.infinity,
                ),
                SizedBox(height: 10),
                MaterialButton(
                  onPressed: () {
                    print('Facebook Sign-in button tappped');
                  },
                  color: Color(0xff415993),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image.asset(
                        'assets/images/facebook.png',
                        width: 24,
                        height: 24,
                      ),
                      SizedBox(width: 10),
                      Text(
                        'Sign-in with Facebook',
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ],
                  ),
                  height: 50,
                  minWidth: double.infinity,
                ),
                SizedBox(height: 10),
                MaterialButton(
                  onPressed: () {
                    print('Google Sign-in button tappped');
                  },
                  color: Color(0xff5286EC),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image.asset(
                        'assets/images/google.png',
                        width: 24,
                        height: 24,
                      ),
                      SizedBox(width: 10),
                      Text(
                        'Sign-in with Google',
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ],
                  ),
                  height: 50,
                  minWidth: double.infinity,
                ),
                SizedBox(height: 20),
                Row(
                  children: <Widget>[
                    Expanded(
                        child: Container(
                      height: 1,
                      color: Colors.grey.shade300,
                    )),
                    SizedBox(width: 10),
                    Text(
                      'OR WITH EMAIL',
                      style:
                          TextStyle(color: Colors.grey.shade600, fontSize: 16),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                        child: Container(
                      height: 1,
                      color: Colors.grey.shade300,
                    )),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: MaterialButton(
                        onPressed: () {
                          print('Sign-in button tapped');
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => LoginScreen()),
                          );
                        },
                        color: Colors.grey.shade700,
                        child: Text(
                          'Sign-in',
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                        height: 50,
                        minWidth: double.infinity,
                      ),
                    ),
                    SizedBox(width: 16),
                    Expanded(
                      child: MaterialButton(
                        onPressed: () {
                          print('Sign-up button tapped');
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => SignUpScreen()),
                          );
                        },
                        color: Colors.grey.shade700,
                        child: Text(
                          'Sign-up',
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                        height: 50,
                        minWidth: double.infinity,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
      Container(
        margin: EdgeInsets.all(8),
        child: IconButton(
            onPressed: () {
              print('Close button tapped');
            },
            icon: Icon(Icons.close),
            color: Colors.grey),
      ),
    ]);
  }
}

class CustomRoundedButton extends StatelessWidget {
  const CustomRoundedButton(
      {Key key,
      @required this.title,
      this.color = Colors.blue,
      this.radius = 4})
      : super(key: key);

  final String title;
  final Color color;
  final int radius;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: InkWell(
        onTap: () {},
        onLongPress: () {},
        child: Container(
          decoration: BoxDecoration(
              color: color, borderRadius: BorderRadius.circular(4)),
          height: 50,
          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: Text(
                '$title',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

