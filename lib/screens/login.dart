import 'package:flutter/material.dart';
import 'package:project_obounce/screens/mydashboard.dart';
import 'package:project_obounce/screens/signup.dart';

class Login extends StatefulWidget {
  const Login({Key? key, required String email, required String pword, required String fname, required String cname}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController _email = TextEditingController();
  TextEditingController _pword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset("assets/login.jpeg", height: 200, width: 5000),
                const Text("Login",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w900,
                        color: Color.fromARGB(255, 7, 39, 65))),
                TextFormField(
                  controller: _email,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (value) {
                    if (value!.length < 6) {
                      return "Email is not valid";
                    } else if (!value.contains('@')) {
                      return "Email must contain @";
                    } else {
                      return null;
                    }
                  },
                  decoration: const InputDecoration(
                      hintText: "Email ID",
                      prefixIcon: Icon(Icons.alternate_email)),
                ),
                TextFormField(
                  controller: _pword,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  obscureText: true,
                  validator: (value) {
                    if (value!.length < 7) {
                      return "Password must contain minimum of 8 caracters";
                    } else if (!value.contains('!')) {
                      return "Password must contain !, ";
                    } else {
                      return null;
                    }
                  },
                  decoration:  InputDecoration(
                      hintText: "Password",
                      prefixIcon: const Icon(Icons.lock),
                      suffix: TextButton(onPressed: (){}, child: const Text("Forget", style: TextStyle(color: Color.fromARGB(255, 18, 55, 85)),))
                  ),
                ),
                const SizedBox(height: 10),
                MaterialButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => MyDashboard(
                            email: _email.text,
                            pword: _pword.text,
                          ),
                        ),
                      );
                    }
                  },
                  color: Colors.blue,
                  height: 50,
                  minWidth: 360,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: const Text(
                    "Login",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                const SizedBox(height: 20),
                const Center(child: Text("Or, login with...")),
                const SizedBox(height: 10),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 70,
                        width: 70,
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey,
                            width: 2,
                          ),
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Image.asset("assets/google.png"),
                      ),
                      Container(
                        height: 70,
                        width: 70,
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey,
                            width: 2,
                          ),
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Image.asset("assets/facebook.jpeg"),
                      ),
                      Container(
                        height: 70,
                        width: 70,
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey,
                            width: 2,
                          ),
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Image.asset("assets/apple.png"),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("New to iThinkLinguistic? "),
                    TextButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => const Signup()));
                      },
                      child: const Text(
                        "Register",
                        style: TextStyle(color: Color.fromARGB(255, 11, 35, 54)),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    _email = TextEditingController();
    _pword = TextEditingController();

    super.initState();
  }

  @override
  void dispose() {
    // ignore: todo
    // TODO: implement dispose
    _email.dispose();
    _pword.dispose();

    super.dispose();
  }
}
