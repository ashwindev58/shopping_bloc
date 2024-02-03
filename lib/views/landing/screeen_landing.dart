import 'dart:ui';

import 'package:flutter/material.dart';

class ScreenLanding extends StatelessWidget {
  final bool inputTextNotNull = true;

  ScreenLanding({super.key});

  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context,BoxConstraints constraints) {
        return Scaffold(
          body: Stack(
            children: [
              Container(
                height: double.infinity,
                width: double.infinity,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      "images/market.jpg",
                    ),
                  ),
                ),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 7.0, sigmaY: 7.0),
                  child: Container(
                    decoration: BoxDecoration(color: Colors.black.withOpacity(0.0)),
                  ),
                ),
              ),
               CircleAvatar(
                maxRadius: constraints.maxHeight*0.2,
                backgroundImage: const NetworkImage(
                    "https://fakestoreapi.com/img/81fPKd-2AYL._AC_SL1500_.jpg",),
              ),
            ],
          ),
        );
      }
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String dropdownValue = 'English';

  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  int buttonColor = 0xff26A9FF;

  bool inputTextNotNull = false;

  @override
  Widget build(BuildContext context) {
    double deviseWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: MediaQuery.of(context).size.height - 90,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    width: MediaQuery.of(context).size.width,
                    alignment: Alignment.topCenter,
                    child: DropdownButton<String>(
                      dropdownColor: Colors.white70,
                      value: dropdownValue,
                      icon: const Icon(Icons.arrow_drop_down),
                      iconSize: 24,
                      elevation: 10,
                      style: const TextStyle(color: Colors.black54),
                      underline: Container(),
                      items: <String>['English', 'Arabic', 'Italian', 'French']
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(
                            value,
                            style: const TextStyle(fontSize: 16),
                          ),
                        );
                      }).toList(),
                      onChanged: (String? value) {},
                    )),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/instagram_logo.png',
                      height: deviseWidth * .20,
                    ),
                    SizedBox(
                      height: deviseWidth * .05,
                    ),
                    Container(
                      width: deviseWidth * .90,
                      height: deviseWidth * .14,
                      decoration: const BoxDecoration(
                        color: Color(0xffE8E8E8),
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Center(
                          child: TextField(
                            onChanged: (text) {
                              setState(() {
                                if (usernameController.text.length >= 2 &&
                                    passwordController.text.length >= 2) {
                                  inputTextNotNull = true;
                                } else {
                                  inputTextNotNull = false;
                                }
                              });
                            },
                            controller: usernameController,
                            style: TextStyle(
                              fontSize: deviseWidth * .040,
                            ),
                            decoration: const InputDecoration.collapsed(
                              hintText: 'Phone number , email or username',
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: deviseWidth * .04,
                    ),
                    Container(
                      width: deviseWidth * .90,
                      height: deviseWidth * .14,
                      decoration: const BoxDecoration(
                        color: Color(0xffE8E8E8),
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Center(
                          child: TextField(
                            onChanged: (text) {
                              setState(() {
                                if (usernameController.text.length >= 2 &&
                                    passwordController.text.length >= 2) {
                                  inputTextNotNull = true;
                                } else {
                                  inputTextNotNull = false;
                                }
                              });
                            },
                            controller: passwordController,
                            obscureText: true,
                            style: TextStyle(
                              fontSize: deviseWidth * .040,
                            ),
                            decoration: const InputDecoration.collapsed(
                              hintText: 'Password',
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: deviseWidth * .04,
                    ),
                    inputTextNotNull
                        ? GestureDetector(
                            onLongPressStart: (s) {
                              setState(() {
                                buttonColor = 0xff78C9FF;
                              });
                            },
                            onLongPressEnd: (s) {
                              setState(() {
                                buttonColor = 0xff26A9FF;
                              });
                            },
                            onTap: () {
                              print('Log In');
                            },
                            child: Container(
                              width: deviseWidth * .90,
                              height: deviseWidth * .14,
                              decoration: BoxDecoration(
                                color: Color(buttonColor),
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(5)),
                              ),
                              child: Center(
                                child: Text(
                                  'Log In',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: deviseWidth * .040,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          )
                        : Container(
                            width: deviseWidth * .90,
                            height: deviseWidth * .14,
                            decoration: const BoxDecoration(
                              color: Color(0xff78C9FF),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5)),
                            ),
                            child: Center(
                              child: Text(
                                'Log In',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: deviseWidth * .040,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                    SizedBox(
                      height: deviseWidth * .035,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Forgot your login details? ',
                          style: TextStyle(
                            fontSize: deviseWidth * .035,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            print('Get help');
                          },
                          child: Text(
                            'Get help',
                            style: TextStyle(
                              fontSize: deviseWidth * .035,
                              color: const Color(0xff002588),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: deviseWidth * .040,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 1,
                          width: deviseWidth * .40,
                          color: const Color(0xffA2A2A2),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          'OR',
                          style: TextStyle(
                            fontSize: deviseWidth * .040,
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: 1,
                          width: deviseWidth * .40,
                          color: const Color(0xffA2A2A2),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: deviseWidth * .06,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/facebook.png',
                          height: deviseWidth * .060,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Login with facebook',
                          style: TextStyle(
                            color: const Color(0xff1877f2),
                            fontSize: deviseWidth * .040,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Container(
                  width: deviseWidth,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: deviseWidth,
                        height: 1,
                        color: const Color(0xffA2A2A2),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Don't have an account? ",
                            style: TextStyle(
                              fontSize: deviseWidth * .040,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              print('Sing up');
                            },
                            child: Text(
                              'Sing up',
                              style: TextStyle(
                                color: const Color(0xff00258B),
                                fontSize: deviseWidth * .040,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
