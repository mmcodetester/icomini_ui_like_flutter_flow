import 'package:flutter/material.dart';
import 'package:flutter_flow_ui/ui/account/forget_password.dart';
import 'package:flutter_flow_ui/ui/account/register_account.dart';
import 'package:flutter_flow_ui/ui/home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<LoginPage> {
  late TextEditingController emailAddressLoginController;
  late TextEditingController passwordLoginController;
  late bool passwordLoginVisibility;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    emailAddressLoginController = TextEditingController();
    passwordLoginController = TextEditingController();
    passwordLoginVisibility = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 1,
            decoration: BoxDecoration(
              // color: ,
              image: DecorationImage(
                fit: BoxFit.fitWidth,
                image: Image.asset(
                  'images/bg.PNG',
                ).image,
              ),
            ),
            child: Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
              child: Column(
                children: [
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(24, 24, 0, 20),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset(
                          'images/logo_icon.PNG',
                          width: 150,
                          height: 50,
                          fit: BoxFit.fitWidth,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(20, 0, 24, 0),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: const [
                              Padding(
                                padding: EdgeInsets.only(left: 20.0),
                                child: Text("Getting Start",
                                    style: TextStyle(fontSize: 18)),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                20, 12, 0, 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: const [
                                Text(
                                  'Login with your account.',
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                20, 20, 20, 0),
                            child: TextFormField(
                              controller: emailAddressLoginController,
                              obscureText: false,
                              decoration: InputDecoration(
                                filled: true,
                                // border: InputBorder.none,
                                labelText: 'Email Address',
                                //hintText: 'Enter Email Address',
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8),
                                    borderSide: const BorderSide(
                                        color: Colors.white, width: 1.0)),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                20, 20, 20, 0),
                            child: TextFormField(
                              controller: passwordLoginController,
                              obscureText: !passwordLoginVisibility,
                              decoration: InputDecoration(
                                  filled: true,
                                  labelText: 'Password',
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(8),
                                      borderSide: const BorderSide(
                                          color: Colors.white, width: 1.0)),
                                  suffix: InkWell(
                                    onTap: () {
                                      setState(() {
                                        passwordLoginVisibility =
                                            !passwordLoginVisibility;
                                      });
                                    },
                                    child: Icon(
                                      passwordLoginVisibility
                                          ? Icons.visibility_outlined
                                          : Icons.visibility_off_outlined,
                                      color: const Color(0x98FFFFFF),
                                      size: 20,
                                    ),
                                  )),
                            ),
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    20, 20, 0, 0),
                                child: TextButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              const ForgetPassword(),
                                        ),
                                      );
                                    },
                                    child: const Text("Forget Password?")),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0, 20, 30, 0),
                                child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        minimumSize: const Size(100, 50),
                                        primary: Colors.green.withOpacity(0.6),
                                        shape: const RoundedRectangleBorder(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(20.0)))),
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              const HomePage(),
                                        ),
                                      );
                                    },
                                    child: const Text('Login')),
                              )
                            ],
                          ),
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(10.0)),
                                color: Colors.white.withOpacity(0.1)),
                            margin: const EdgeInsets.only(
                                left: 25, right: 25, top: 15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      5, 10, 0, 10),
                                  child: Text(
                                    "Don't have an account?",
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                ),
                                TextButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              const RegisterAccount(),
                                        ),
                                      );
                                    },
                                    child: Row(
                                      children: const [
                                        Padding(
                                          padding: EdgeInsets.only(right: 10.0),
                                          child: Text("Create"),
                                        ),
                                        Icon(Icons.arrow_forward_rounded)
                                      ],
                                    ))
                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 20.0),
                                child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        minimumSize: const Size(130, 60),
                                        primary: Colors.white.withOpacity(0.1),
                                        shape: const RoundedRectangleBorder(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(20.0)))),
                                    onPressed: () {},
                                    child: const Text(
                                      "Continue as Guest",
                                      style: TextStyle(color: Colors.grey),
                                    )),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
