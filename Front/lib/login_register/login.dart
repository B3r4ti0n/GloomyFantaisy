import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController passwordController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController pseudoController = TextEditingController();
  TextEditingController emailNewPwdController = TextEditingController();
  TextEditingController newPasswordController = TextEditingController();

  var logged;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
          padding: const EdgeInsets.all(20),
          margin: const EdgeInsets.symmetric(horizontal: 20.0),
          child: createForm(
              context)), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  //Formulaire de connexion
  Form createForm(BuildContext context) {
    GlobalKey<FormState> formKey = GlobalKey<FormState>();
    return Form(
      key: formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column( children: const [
            Text(
              'Login',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 45),
              textAlign: TextAlign.center,
            ),
          ]),
          Container(
            margin: const EdgeInsets.only(top: 70),
            child: TextFormField(
              controller: emailController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Email',
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
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 25),
            child: TextFormField(
              controller: passwordController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Password',
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter a password';
                }
                return null;
              },
            ),
          ),
          Container(
            height: 80,
            width: 4000,
            padding: const EdgeInsets.all(20),
            //Bouton Connexion
            child: ElevatedButton(
              //Au clique ...
              onPressed: () async {
                //... Si le formulaire est rempli ...
                if (formKey.currentState!.validate()) {
                  Navigator.of(context).pop();
                }
              },
              child: const Text('Login'),
            ),
          ),
          //Button mot de passe oublié
        ],
      ),
    );
  }
}
