import 'package:flutter/material.dart';
import 'package:task1/pages/login_page.dart';
import 'package:task1/widgets/auth_app_bar.dart';
import 'package:task1/widgets/custom_button.dart';
import 'package:task1/widgets/custom_row.dart';
import 'package:task1/widgets/custom_text_field.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  bool _isPasswordHidden = true;
  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    super.dispose();
    _formKey.currentState!.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const AuthAppBar(),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      children: const [
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 20.0),
                          child: Text(
                            'Welcome to Fashion Daily',
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Register',
                          style: TextStyle(
                            fontSize: 34.0,
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: const [
                              Text(
                                'Help',
                                style: TextStyle(
                                  fontSize: 16.0,
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Icon(
                                Icons.help,
                                size: 24.0,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    const CustomTextField(
                      title: 'Email',
                      hint: 'Eg. example@email.com',
                      textInputType: TextInputType.emailAddress,
                      validation: 'Email can not be empty',
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    const CustomTextField(
                      title: 'Phone Number',
                      isPhone: true,
                      hint: 'Eg. 01234567890',
                      textInputType: TextInputType.phone,
                      validation: 'Phone number is required',
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    CustomTextField(
                      title: 'Password',
                      isPasswordHidden: _isPasswordHidden,
                      hint: 'Password',
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            _isPasswordHidden = !_isPasswordHidden;
                          });
                        },
                        icon: Icon(
                          _isPasswordHidden
                              ? Icons.remove_red_eye_rounded
                              : Icons.visibility_off,
                        ),
                      ),
                      textInputType: TextInputType.visiblePassword,
                      validation: 'Password can not be empty',
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: CustomButton(
                        content: const Text(
                          'Register',
                          style: TextStyle(
                            fontSize: 18.0,
                            color: Colors.white,
                          ),
                        ),
                        onPressed: () {
                          _formKey.currentState!.validate();
                        },
                        backgroundColor: Colors.blue,
                        height: 60.0,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 20),
                      child: Text(
                        'OR',
                      ),
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: CustomButton(
                        content: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/images/google_logo.png',
                              width: 20.0,
                              height: 20.0,
                            ),
                            const SizedBox(
                              width: 6.0,
                            ),
                            const Text(
                              'Sign up with google',
                              style: TextStyle(
                                fontSize: 18.0,
                                color: Colors.blue,
                              ),
                            ),
                          ],
                        ),
                        onPressed: () {},
                        backgroundColor: Colors.white,
                        height: 60.0,
                        elevation: 0,
                        borderColor: Colors.blue,
                      ),
                    ),
                    CustomRow(
                      title: 'Have any account?',
                      btnTitle: 'Sign in here',
                      btnTitleColor: Colors.blue,
                      onPressed: () {
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute(
                            builder: (context) {
                              return const LoginPage();
                            },
                          ),
                        );
                      },
                    ),
                    const SizedBox(
                      height: 30.0,
                    ),
                    const Text(
                      'By registering your account, you agree to our',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 16.0,
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        padding: const EdgeInsets.all(0),
                      ),
                      child: const Text(
                        'terms and conditions',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 16.0,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
