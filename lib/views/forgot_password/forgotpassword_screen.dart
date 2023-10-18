import 'package:flutter/material.dart';
import 'package:login_app/widgets/customelevatedbutton.dart';
import 'package:login_app/widgets/customtextfield.dart';

class ForgotScreen extends StatelessWidget {
  const ForgotScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(children: [
        Container(
          height: double.infinity,
          width: double.infinity,
          child: FittedBox(
            fit: BoxFit.fill,
            child: Image.asset(
              'assets/images/png/background_design.png',
              fit: BoxFit.fill,
            ),
          ),
        ),
        SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: SingleChildScrollView(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                        child: Text(
                      'Forgot Password',
                      style: TextStyle(
                          color: Color.fromARGB(255, 29, 32, 30),
                          fontSize: 28,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Lato'),
                    )),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.03,
                    ),
                    Center(
                        child: Image.asset(
                            'assets/images/jpg/forgotpassword.jpg')),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    Text(
                      '    Email Address',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 13,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.006,
                    ),
                    CustomTextfieldWidget(
                        hinttext: 'Enter Email Address',
                        leadingIcon: Icon(Icons.email)),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.1,
                    ),
                    Center(
                      child: Text(
                        '    Please write your email to receive a \nconfirmation code to set a new password.',
                        textAlign: TextAlign.justify,
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.1,
                    ),
                    Center(
                      child: CustomElevatedButtonWidget(
                          buttonText: 'Confim mail', onPressed: () {}),
                    )
                  ]),
            ),
          ),
        ),
      ]),
    );
  }
}
