import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FormScreen extends StatefulWidget {
  @override
  State<FormScreen> createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  bool notify = false;
  GlobalKey<FormState> formstate = new GlobalKey<FormState>();
  //final _formfield
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Switch(
            value: notify,
            onChanged: (val) {
              setState(() {
                val = notify;
              });
            }),
        title: Text("Sign in"),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Color.fromARGB(246, 34, 214, 196),
        child: Icon(Icons.lock),
      ),
      body: SingleChildScrollView(
        child: Form(
            key: formstate,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            child: Column(
              children: [
                SizedBox(
                  height: 100,
                ),
                Image.asset(
                  "images/login.png",
                ),
                TextFormField(
                    validator: (text) {
                      if (text == null || text.isEmpty) {
                        return "Username cannot be empty";
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      hintText: "username",
                      hintStyle: TextStyle(fontSize: 20),
                    )),
                SizedBox(
                  height: 30,
                ),
                TextFormField(
                    validator: (text) {
                      if (text == null || text.isEmpty) {
                        return "password cannot be empty";
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      hintText: "password",
                      hintStyle: TextStyle(fontSize: 20),
                    )),
                SizedBox(height: 16),
                // Display the error message
                Text(
                  formstate.currentState?.validate() == false
                      ? 'Please enter a value'
                      : '',
                  style: TextStyle(color: Colors.red),
                ),
              ],
            )),
      ),
    );
  }
}
