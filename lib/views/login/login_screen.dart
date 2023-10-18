import 'package:flutter/material.dart';
import 'package:login_app/utils/navigation.dart';
import 'package:login_app/views/create_account/create_account_screen.dart';
import 'package:login_app/views/forgot_password/forgotpassword_screen.dart';
import 'package:login_app/views/home_screen/home_screen.dart';
import 'package:login_app/widgets/customtextfield.dart';

import '../../widgets/customelevatedbutton.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var ph = MediaQuery.of(context).size.height;
    var pw = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(children: [
        Container(
          height: double.infinity,
          width: double.infinity,
          child: FittedBox(
            fit: BoxFit.fill,
            child: Image.asset(
              'assets/images/png/background_design3.png',
              fit: BoxFit.fill,
            ),
          ),
        ),
        SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: ph * 0.1,
                ),
                Text(
                  'Welcome\nBack',
                  style: TextStyle(
                      // color: Colors.black.withOpacity(0.7),
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Lato'),
                ),
                SizedBox(
                  height: ph * 0.1,
                ),
                CustomTextfieldWidget(
                    hinttext: 'Email', leadingIcon: Icon(Icons.email)),
                SizedBox(
                  height: ph * 0.01,
                ),
                CustomTextfieldWidget(
                    hinttext: 'Password', leadingIcon: Icon(Icons.password)),
                SizedBox(
                  height: ph * 0.02,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    TextButton(
                      onPressed: () {
                        nextScreen(context, ForgotScreen());
                      },
                      child: Center(
                        child: Text(
                          'Forgot Password?',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
                Center(
                    child: CustomElevatedButtonWidget(
                  onPressed: () {
                    nextScreen(context, HomeScreen());
                  },
                  buttonText: 'Login',
                )),
                SizedBox(
                  height: ph * 0.02,
                ),
                Container(
                  height: 50,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: pw * 0.4,
                        child: Divider(
                          thickness: 2,
                          color:
                              Theme.of(context).primaryColorDark, // for example
                        ),
                      ),
                      SizedBox(
                        width: pw * 0.01,
                      ),
                      Text(
                        'Or',
                        style: TextStyle(
                            color: Theme.of(context).primaryColorDark,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Lato'),
                      ),
                      SizedBox(
                        width: pw * 0.01,
                      ),
                      Container(
                        width: pw * 0.4,
                        child: Divider(
                          thickness: 2,
                          color:
                              Theme.of(context).primaryColorDark, // for example
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: ph * 0.01,
                ),
                Container(
                  height: ph * 0.05,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset('assets/images/jpeg/facebook_logo.jpeg'),
                      SizedBox(
                        width: pw * 0.08,
                      ),
                      Image.asset('assets/images/png/google_logo.png'),
                    ],
                  ),
                ),
                SizedBox(
                  height: ph * 0.01,
                ),
                SizedBox(
                  height: ph * 0.01,
                ),
                Center(
                  child: Container(
                    width: pw * 0.8,
                    child: FittedBox(
                      fit: BoxFit.contain,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Don\'t have an account? ',
                            style: TextStyle(fontSize: 18),
                          ),
                          TextButton(
                              onPressed: () {
                                nextScreen(context, CreateAccountScreen());
                              },
                              child: Text(
                                'Create Now',
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ))
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
      ]),
    );
  }
}
