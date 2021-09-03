import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: WelcomeBackScreen(),
  ));
}

class WelcomeBackScreen extends StatelessWidget {
  const WelcomeBackScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF7F7F7),
      body: Padding(
        padding: EdgeInsets.fromLTRB(20.0, 20, 20.0, 0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 50.0,
              ),
              Container(
                alignment: Alignment.center,
                child: Image.asset('assets/zuri-logo.png'),
              ),
              SizedBox(
                height: 24.0,
              ),
              Center(
                  child: Text(
                'Sign In',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20.0),
              )),
              SizedBox(
                height: 4.0,
              ),
              Center(child: Text('Please sign in to an existing workspace')),
              SizedBox(
                height: 76.0,
              ),
              TextFieldWidget(
                keyboardType: TextInputType.emailAddress,
                inputAction: TextInputAction.next,
                autoFocus: false,
                autoCorrect: true,
                obscureText: false,
                labelText: 'Email',
                hintText: 'Name@gmail.com',
              ),
              SizedBox(
                height: 30.0,
              ),
              TextFieldWidget(
                keyboardType: TextInputType.emailAddress,
                inputAction: TextInputAction.next,
                autoFocus: false,
                autoCorrect: true,
                obscureText: true,
                labelText: 'Password',
                hintText: 'Enter Password',
              ),
              Container(
                  alignment: Alignment.topRight,
                  child: TextButton(
                    onPressed: () {},
                    child: Text('Forget Password?'),
                  )),
              SizedBox(
                height: 14.0,
              ),
              Center(
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Sign In',
                    style: GoogleFonts.lato(
                        textStyle: Theme.of(context).textTheme.headline4,
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        fontStyle: FontStyle.normal,
                        color: Color(0xffFFFFFF)),
                  ),
                  style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(
                          horizontal: 160.0, vertical: 13.0),
                      primary: Color(0xff00B87C)),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Don\'t have an account?'),
                  TextButton(onPressed: () {}, child: Text('Register'))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({
    Key? key,
    this.keyboardType,
    this.inputAction,
    this.autoFocus,
    this.autoCorrect,
    this.obscureText,
    this.labelText, this.hintText,
  }) : super(key: key);
  final keyboardType;
  final inputAction;
  final bool? autoFocus;
  final bool? autoCorrect;
  final bool? obscureText;
  final String? labelText;
  final String? hintText;
  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: keyboardType,
      textInputAction: inputAction,
      autofocus: autoFocus!,
      autocorrect: autoCorrect!,
      obscureText: obscureText!,
      decoration: InputDecoration(
        labelText: labelText,
        hintText: hintText,
        border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(5.0)),),
        focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(5.0)),borderSide: BorderSide(color: Color(0xff1A61DB
        ))),
      ),
    );
  }
}
