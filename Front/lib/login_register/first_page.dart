import 'package:flutter/material.dart';

class Choose extends StatefulWidget {
  const Choose({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<Choose> createState() => _ChooseState();
}
class _ChooseState extends State<Choose> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
          padding: const EdgeInsets.all(20),
          margin: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column( children: const [
                Text(
                  'Gloomy Fantasy',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 45),
                  textAlign: TextAlign.center,
                ),
              ]),
              Container(
                margin: const EdgeInsets.only(top: 70),
                height: 50,
                width: 4000,
                child: ElevatedButton(
                  onPressed: () async {
                    Navigator.of(context).pushNamed('login_page');
                  },
                  child: const Text(
                    'Login',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ),
              Container(
                height: 50,
                width: 4000,
                margin: const EdgeInsets.only(top: 50),
                child: ElevatedButton(
                  onPressed: () async {
                    Navigator.of(context).pushNamed( 'register_page');
                  },
                  child: const Text(
                    'Register',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ),
        ],)
      )
    );
  }

}
