import 'package:flutter/material.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  var emailAddressLoginController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.grey.shade800,
      //   centerTitle: true,
      //   title: const Text("Forget Password"),
      // ),
      body: Column(
        children: [
          SingleChildScrollView(
            child: Column(children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(10, 20, 10, 0),
                    child: IconButton(
                      tooltip: 'Back',
                      icon: const Icon(
                        Icons.arrow_back_ios,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                  const Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 20, 10, 0),
                      child: Text(
                        "Forget Password",
                        style: TextStyle(fontSize: 18),
                      )),
                ],
              ),
              Row(
                children: const [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 20, 0, 0),
                      child: Text(
                        'Enter the email associated with your account and we will send you a verification code.',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(20, 20, 20, 0),
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
                        borderSide:
                            const BorderSide(color: Colors.white, width: 1.0)),
                  ),
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            minimumSize: const Size(130, 60),
                            primary: Colors.green.withOpacity(0.8),
                            shape: const RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20.0)))),
                        onPressed: () {},
                        child: const Text(
                          "Sent Reset Link",
                          style: TextStyle(color: Colors.white),
                        )),
                  )
                ],
              )
            ]),
          )
        ],
      ),
    );
  }
}
