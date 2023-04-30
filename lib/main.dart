import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'validator.dart';
import 'booking.dart';
import 'moredet.dart';
import 'package:flutter/widgets.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(const MyApp2());
}

class MyApp2 extends StatelessWidget {
  const MyApp2({Key? key}) : super(key: key);

  static const String _title = 'Sample App2';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.grey[300],
            centerTitle: true,
            title: Text(
              'Login',
              style: TextStyle(
                  color: Colors.grey[500], fontFamily: 'Roboto', fontSize: 24),
            )),
        body: const MyStatefulWidget(),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  // TextEditingController nameController = TextEditingController();
  // TextEditingController passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  String _email = "", _password = "";
  // Firebase Auth instance
  final FirebaseAuth _auth = FirebaseAuth.instance;

  void _validateAndSubmit(context) async {
    try {
      // Calling the Firebase Auth signInWithEmailAndPassword method to sign in the user
      UserCredential user = await _auth.signInWithEmailAndPassword(
          email: _email, password: _password);
      CircularProgressIndicator();
      // If the user is signed in successfully, then the user is navigated to the Feed page
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => MyApp()),
      );
    } catch (e) {
      // If the user is not signed in successfully, then a SnackBar is shown with the error message
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: const Text('Incorrect Email or Password'),
          backgroundColor: Colors.blue,
          behavior: SnackBarBehavior.floating,
          action: SnackBarAction(
            label: '',
            onPressed: () {},
          ),
        ),
      );
      print('Error: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
          padding: const EdgeInsets.all(10),
          child: ListView(
            children: <Widget>[
              Container(
                width: double.infinity,
                alignment: FractionalOffset(0, 0),
                padding: const EdgeInsets.all(10),
                color: Colors.grey[300],
                child: Column(
                  children: [
                    TextButton(
                      onPressed: (() {}),
                      child: Row(
                        children: [
                          Image(
                              image: AssetImage('assets/google.png'),
                              height: 40,
                              width: 40),
                          SizedBox(
                            width: 20,
                          ),
                          Text('Continue with Google',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Roboto',
                                  fontSize: 20))
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(10),
                  child: const Text(
                    'Sign in',
                    style: TextStyle(fontSize: 20),
                  )),
              Container(
                padding: const EdgeInsets.all(10),
                child: TextFormField(
                  onChanged: (value) => _email = value,
                  validator: (value) {
                    RegExp regex = RegExp(
                        r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
                    if (value!.isEmpty) {
                      return 'Please enter Email';
                    } else if (!regex.hasMatch(value)) {
                      return 'Enter valid email';
                    } else {
                      return null;
                    }
                  },
                  // controller: nameController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Email',
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                child: TextFormField(
                  onChanged: (value) => _password = value,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter Password';
                    } else {
                      return null;
                    }
                  },
                  // controller: nameController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                  ),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: const Text(
                  'Forgot Password',
                ),
              ),
              Container(
                  height: 50,
                  padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: ElevatedButton(
                      child: const Text('Login'),
                      onPressed: () {
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //       builder: (context) => const MyApp()),
                        // );
                        _validateAndSubmit(context);
                      })),
              Row(
                children: <Widget>[
                  const Text('Does not have account?'),
                ],
                mainAxisAlignment: MainAxisAlignment.center,
              ),
              Container(
                  height: 50,
                  padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: ElevatedButton(
                    child: const Text('Sign Up'),
                    onPressed: () {
                      // _validateAndSubmit(context);
                      // print(nameController.text);
                      // print(passwordController.text);
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const MyApp3()),
                      );
                    },
                  )),
            ],
          )),
    );
  }
}
