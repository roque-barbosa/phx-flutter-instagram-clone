import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mobile/utils/colors.dart';
import 'package:mobile/widgets/text_field_input.dart';

class SignupScreen extends StatefulWidget {
  SignupScreen({Key? key}) : super(key: key);

  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _bioController = TextEditingController();
  final TextEditingController _usernameController = TextEditingController();
  final SizedBox _spacer = SizedBox(height: 24);

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _bioController.dispose();
    _usernameController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 32),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Flexible(child: Container(), flex: 2),

              SvgPicture.asset('images/ic_instagram.svg',
                  color: primaryColor, height: 64),
              const SizedBox(height: 64),

              // Circular widget for perfil pic
              Stack(
                children: [
                  const CircleAvatar(
                    radius: 54,
                    backgroundImage: NetworkImage("https://images.unsplash.com/photo-1642667049059-04325f205049?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80"),
                  ),
                  Positioned(
                    bottom: -5,
                    left: 80,
                    child: IconButton(
                      onPressed: (){},
                      icon: const Icon(Icons.add_a_photo),
                    ),
                  ),
                ],
              ),

              _spacer,

              TextFieldInput(
                hintText: 'Enter yout Username',
                textInputType: TextInputType.text,
                textEditingController: _usernameController,
              ),

              _spacer,
              // text field import email
              TextFieldInput(
                hintText: 'Enter yout Email',
                textInputType: TextInputType.emailAddress,
                textEditingController: _emailController,
              ),

              _spacer,

              TextFieldInput(
                hintText: 'Enter yout password',
                textInputType: TextInputType.text,
                textEditingController: _passwordController,
                isPass: true,
              ),

              _spacer,

              TextFieldInput(
                hintText: 'Enter yout Bio',
                textInputType: TextInputType.text,
                textEditingController: _bioController,
              ),

              _spacer,

              InkWell(
                child: Container(
                  child: const Text('Sign Up'),
                  width: double.infinity,
                  alignment: Alignment.center,
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  decoration: const ShapeDecoration(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(4))),
                      color: blueColor),
                ),
              ),

              _spacer,

              Flexible(child: Container(), flex: 2),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: const Text("Already have an account?"),
                    padding: const EdgeInsets.symmetric(vertical: 8),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      child: const Text(
                        "Login",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      padding: const EdgeInsets.symmetric(vertical: 8),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
