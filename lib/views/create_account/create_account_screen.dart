import 'package:flutter/material.dart';
import 'package:login_app/utils/navigation.dart';
import 'package:login_app/views/home_screen/home_screen.dart';
import 'package:login_app/views/login/login_screen.dart';
import 'package:login_app/widgets/customelevatedbutton.dart';
import 'package:login_app/widgets/customtextfield.dart';

class CreateAccountScreen extends StatelessWidget {
  const CreateAccountScreen({super.key});

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
              'assets/images/png/background_design.png',
              fit: BoxFit.fill,
            ),
          ),
        ),
        SafeArea(
          child: Padding(
            padding: EdgeInsets.all(12.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: ph * 0.1,
                  ),
                  Text(
                    'Create\nAccount',
                    style: TextStyle(
                        // color: Colors.black.withOpacity(0.7),
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Lato'),
                  ),
                  SizedBox(
                    height: ph * 0.02,
                  ),
                  CustomTextfieldWidget(
                      hinttext: 'Full name', leadingIcon: Icon(Icons.person)),
                  SizedBox(
                    height: ph * 0.01,
                  ),
                  CustomTextfieldWidget(
                      hinttext: 'Email', leadingIcon: Icon(Icons.email)),
                  SizedBox(
                    height: ph * 0.01,
                  ),
                  CustomTextfieldWidget(
                      hinttext: 'Password', leadingIcon: Icon(Icons.password)),
                  SizedBox(
                    height: ph * 0.05,
                  ),
                  Center(
                      child: CustomElevatedButtonWidget(
                    onPressed: () {
                      nextScreen(context, HomeScreen());
                    },
                    buttonText: 'Signup',
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
                            color: Theme.of(context)
                                .primaryColorDark, // for example
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
                            color: Theme.of(context)
                                .primaryColorDark, // for example
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
                    height: ph * 0.15,
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
                              'Already have an account? ',
                              style: TextStyle(fontSize: 18),
                            ),
                            TextButton(
                                onPressed: () {
                                  nextScreen(context, LoginScreen());
                                },
                                child: Text(
                                  'Login',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ))
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
