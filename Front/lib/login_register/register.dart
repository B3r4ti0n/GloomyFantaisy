import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Register extends StatefulWidget {
  const Register({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  TextEditingController lastNameController = TextEditingController();
  TextEditingController firstNameController = TextEditingController();
  TextEditingController ageController = TextEditingController();
  TextEditingController mailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool isOwner = false;
  bool isHalfBoarder = false;

  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> formKey = GlobalKey<FormState>();

    return Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text(widget.title),
        ),
        body: SingleChildScrollView(
            child: Center(
                child: Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: SizedBox(
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            const Text(
                              "Create an account",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 28),
                            ),
                            Form(
                              key: formKey,
                              child: Column(
                                children: <Widget>[
                                  Container(
                                      margin: const EdgeInsets.only(top: 30),
                                      child: TextFormField(
                                        controller: lastNameController,
                                        decoration: const InputDecoration(
                                          border: OutlineInputBorder(),
                                          hintText: 'Enter your name',
                                        ),
                                        validator: (value) {
                                          if (value == null || value.isEmpty) {
                                            return 'Please write a correct name';
                                          }
                                        },
                                      )),
                                  Container(
                                      margin: const EdgeInsets.only(top: 20),
                                      child: TextFormField(
                                        controller: firstNameController,
                                        decoration: const InputDecoration(
                                          border: OutlineInputBorder(),
                                          hintText: 'Enter your first name',
                                        ),
                                        validator: (value) {
                                          if (value == null || value.isEmpty) {
                                            return 'Please write a correct first name';
                                          } else {
                                            return null;
                                          }
                                        },
                                      )),
                                  Container(
                                      margin: const EdgeInsets.only(top: 20),
                                      child: TextFormField(
                                        controller: ageController,
                                        keyboardType: TextInputType.number,
                                        inputFormatters: <TextInputFormatter>[
                                          FilteringTextInputFormatter.digitsOnly
                                        ],
                                        decoration: const InputDecoration(
                                          border: OutlineInputBorder(),
                                          hintText: 'Enter your age',
                                        ),
                                        validator: (value) {
                                          if (value == null || value.isEmpty) {
                                            return 'Please write a correct age';
                                          } else {
                                            return null;
                                          }
                                        },
                                      )),
                                  Container(
                                      margin: const EdgeInsets.only(top: 20),
                                      child: TextFormField(
                                        controller: mailController,
                                        decoration: const InputDecoration(
                                          border: OutlineInputBorder(),
                                          hintText: 'Enter your email',
                                        ),
                                        validator: (value) {
                                          if (value == null ||
                                              value.isEmpty ||
                                              !RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                                  .hasMatch(value)) {
                                            return 'Please write a correct email';
                                          } else {
                                            return null;
                                          }
                                        },
                                      )),
                                  Container(
                                      margin: const EdgeInsets.only(top: 20),
                                      child: TextFormField(
                                        controller: phoneController,
                                        keyboardType: TextInputType.number,
                                        inputFormatters: <TextInputFormatter>[
                                          FilteringTextInputFormatter.digitsOnly
                                        ],
                                        decoration: const InputDecoration(
                                          border: OutlineInputBorder(),
                                          hintText:
                                          'Enter your phone number',
                                        ),
                                        validator: (value) {
                                          if (value == null ||
                                              value.isEmpty ||
                                              !RegExp(r"^\+?0[0-9]{9}$")
                                                  .hasMatch(value)) {
                                            return 'Please write a correct phone number';
                                          } else {
                                            return null;
                                          }
                                        },
                                      )),
                                  Container(
                                      margin: const EdgeInsets.only(top: 20),
                                      child: TextFormField(
                                        controller: usernameController,
                                        decoration: const InputDecoration(
                                          border: OutlineInputBorder(),
                                          hintText: 'Enter your pseudo',
                                        ),
                                        validator: (value) {
                                          if (value == null || value.isEmpty) {
                                            return 'Please write a correct pseudo';
                                          } else {
                                            return null;
                                          }
                                        },
                                      )),
                                  Container(
                                      margin: const EdgeInsets.only(top: 20),
                                      child: TextFormField(
                                        controller: passwordController,
                                        decoration: const InputDecoration(
                                          border: OutlineInputBorder(),
                                          hintText: 'Enter your password',
                                        ),
                                        validator: (value) {
                                          if (value == null || value.isEmpty) {
                                            return 'Please write a correct password';
                                          } else {
                                            return null;
                                          }
                                        },
                                      )),
                                  Container(
                                      margin: const EdgeInsets.only(top: 20),
                                      width: 250,
                                      height: 50,
                                      child: ElevatedButton(
                                        onPressed: () async {
                                          if (formKey.currentState!
                                              .validate()) {
                                              Navigator.of(context).pop();
                                          }
                                        },
                                        child: const Text(
                                          'Login',
                                          style: TextStyle(fontSize: 16),
                                        ),
                                      ))
                                ],
                              ),
                            )
                          ]),
                    )))));
  }
}
