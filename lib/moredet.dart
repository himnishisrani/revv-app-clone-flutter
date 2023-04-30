// import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:app/validator.dart';
// import 'package:firebase_auth/firebase_auth.dart';
import 'main.dart';

class MyApp3 extends StatefulWidget {
  const MyApp3({Key? key}) : super(key: key);

  static const String _title = 'Sample App3';

  @override
  State<MyApp3> createState() => _MyApp3State();
}

class _MyApp3State extends State<MyApp3> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: MyApp3._title,
      home: Scaffold(
        appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.grey[300],
            centerTitle: true,
            title: Text(
              'Contact Details',
              style: TextStyle(
                  color: Colors.grey[500], fontFamily: 'Roboto', fontSize: 24),
            )),
        body: const MyStatefulWidget1(),
      ),
    );
  }
}

class MyStatefulWidget1 extends StatefulWidget {
  const MyStatefulWidget1({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget1> createState() => _MyStatefulWidgetState1();
}

class _MyStatefulWidgetState1 extends State<MyStatefulWidget1> {
  // TextEditingController nameController = TextEditingController();
  // TextEditingController passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  dynamic _email;
  dynamic _password;
  String _phone = '';
  String _name = '';

  @override
  Widget build(BuildContext context) {
    // Defines the return value which is inserted in the database

    // Function that performs the add operation in the database

    return Form(
      child: Padding(
          padding: const EdgeInsets.all(10),
          child: ListView(
            children: <Widget>[
              Container(
                padding: const EdgeInsets.all(10),
                child: TextFormField(
                  // controller: nameController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Enter your name',
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                child: TextFormField(
                  // controller: nameController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Enter your number',
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                child: TextFormField(
                  onChanged: (value) => _email = value,
                  //  Automatically calls the validator method when the user interacts with the field
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  // Calls the validation function imported form the validators.dart file
                  validator: ((value) => emailValidator(value!)),
                  // controller: nameController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Enter your Email',
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                child: TextFormField(
                  obscureText: true, // Obscures the text
                  validator: (value) {
                    if (value?.trim().isEmpty ?? false) {
                      return 'Please enter a password';
                    }
                    if ((value?.trim().length ?? 0) < 6) {
                      return 'Password must be at least 6 characters';
                    }
                    return null;
                  },
                  onSaved: (value) => _password = value?.trim() ?? '',
                  decoration: InputDecoration(
                    labelText: 'Password',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(0),
                    ),
                  ),
                ),
              ),
              Container(
                  height: 50,
                  padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: ElevatedButton(
                    child: const Text('Sign Up'),
                    onPressed: () {
                      if (_formKey.currentState?.validate() ?? false) {
                        _formKey.currentState?.save();
                        // Do something with the collected data.
                        FirebaseAuth.instance
                            .createUserWithEmailAndPassword(
                                email: _email, password: _password)
                            .then((value) {
                          print("Created New Account");
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (_) => MyApp2(),
                            ),
                          );
                        }).onError((error, stackTrace) {
                          print("Error ${error.toString()}");
                        });
                      }
                    },
                  )),
            ],
          )),
    );
  }
}
