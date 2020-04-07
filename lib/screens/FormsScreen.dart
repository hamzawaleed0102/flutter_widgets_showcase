import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterplayground/components/SideDrawer.dart';

class FormsScreen extends StatefulWidget {
  static const String routeName = "/forms";
  @override
  _FormsScreen createState() => _FormsScreen();
}

class _FormsScreen extends State<FormsScreen> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final halfScreenWidth = MediaQuery.of(context).size.width / 2.0;
    return Scaffold(
      drawer: SideDrawer(),
      appBar: AppBar(
        title: Text("Forms"),
        backgroundColor: Colors.blueGrey,
      ),
      body: Form(
        key: _formKey,
        child: Column(
          children: <Widget>[
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                  width: halfScreenWidth,
                  child: MyTextField(
                    hintText: "First Name",
                  ),
                ),
                Container(
                  width: halfScreenWidth,
                  child: MyTextField(
                    hintText: "Last Name",
                  ),
                )
              ],
            ),
            MyTextField(
              hintText: "Email",
              isEmail: true,
            ),
            MyTextField(
              hintText: "Password",
              isPassword: true,
            ),
            MyTextField(
              hintText: "Confirm Password",
              isPassword: true,
            ),
            SizedBox(height: 20),
            RaisedButton(
              color: Colors.blue,
              onPressed: () {},
              child: Text(
                "SIGN UP",
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class MyTextField extends StatelessWidget {
  final String hintText;
  final Function validator;
  final Function onSaved;
  final bool isPassword;
  final bool isEmail;

  MyTextField({
    this.hintText,
    this.validator,
    this.onSaved,
    this.isPassword = false,
    this.isEmail = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: TextFormField(
        decoration: InputDecoration(
          labelText: hintText,
        ),
        obscureText: isPassword,
        validator: validator,
        onSaved: onSaved,
        keyboardType: isEmail ? TextInputType.emailAddress : TextInputType.text,
      ),
    );
  }
}
