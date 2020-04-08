import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterplayground/components/SideDrawer.dart';
import 'package:flutterplayground/models/signup_model.dart';
import 'package:validators/validators.dart' as validator;

class FormsScreen extends StatefulWidget {
  static const String routeName = "/forms";
  @override
  _FormsScreen createState() => _FormsScreen();
}
Future<void> _ackAlert(BuildContext context) {
  return showDialog<void>(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text('Success'),
        content: const Text('Form validated successfully!'),
        actions: <Widget>[
          FlatButton(
            child: Text('Ok'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}

class _FormsScreen extends State<FormsScreen> {
  final _formKey = GlobalKey<FormState>();
  final _scaffoldKey = GlobalKey<FormState>();

  SignupModel model = new SignupModel();
  AlertDialog dialog=new AlertDialog();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: SideDrawer(),
      appBar: AppBar(
        title: Text("Forms"),
        backgroundColor: Colors.blueGrey,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Column(
              children: <Widget>[
                TextFormField(
                  decoration: InputDecoration(
                    labelText: "First Name",
                  ),
                  autovalidate: true,
                  validator: (String val) {
                    if (val.isEmpty) {
                      return "Enter a valid name";
                    }
                    return null;
                  },
                ),
                SizedBox(height: 20),
                TextFormField(
                  decoration: InputDecoration(
                      fillColor: Colors.grey[200],
                      filled: true,
                      hintText: "Last Name",
                      border: InputBorder.none),
                  autovalidate: true,
                  validator: (String val) {
                    if (val.isEmpty) {
                      return "Enter a valid last name";
                    }
                    return null;
                  },
                ),
                SizedBox(height: 20),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "Email",
                    border: OutlineInputBorder(),
                  ),
                  keyboardType: TextInputType.emailAddress,
                  autovalidate: true,
                  validator: (String val) {
                    if (!validator.isEmail(val)) {
                      return "Enter a valid email address";
                    }
                    return null;
                  },
                ),
                SizedBox(height: 20),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: "Password",
                    border: OutlineInputBorder(),
                  ),
                  autovalidate: true,
                  validator: (String val) {
                    if (val.length < 7) {
                      return "Password should be minimum 7 characters";
                    }
                    _formKey.currentState.save();
                    return null;
                  },
                  onSaved: (String value) {
                    model.password = value;
                  },
                ),
                SizedBox(height: 20),
                TextFormField(
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(40)),
                        borderSide: BorderSide(color: Colors.blue)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(40)),
                        borderSide: BorderSide(color: Colors.green)),
                    errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(40)),
                        borderSide: BorderSide(color: Colors.red)),
                    focusedErrorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(40)),
                        borderSide: BorderSide(color: Colors.red)),
                    labelText: "Confirm Password",
                    focusColor: Colors.red,
                  ),
                  autovalidate: true,
                  validator: (String val) {
                    if (val.length < 7) {
                      return "Password should be minimum 7 characters";
                    } else if (model.password != null &&
                        val != model.password) {
                      return "Password does not match";
                    }
                    return null;
                  },
                ),
                SizedBox(height: 40),
                RaisedButton(
                  padding: EdgeInsets.only(left: 20, right: 20),
                  color: Colors.blue,
                  onPressed: () {
                    if (_formKey.currentState.validate()) {
                      _ackAlert(context);
                    }
                  },
                  child: Text(
                    "SIGN UP",
                    style: TextStyle(color: Colors.white),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
