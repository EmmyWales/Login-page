import 'package:flutter/material.dart';
import 'package:project_obounce/screens/login.dart';

class Signup extends StatefulWidget {
  
  const Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController _email = TextEditingController();
  TextEditingController _pword = TextEditingController();
  TextEditingController _fname = TextEditingController();
  TextEditingController _cname = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Center(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset("assets/Signup.jpeg", height: 200, width: 1000,),
            const Text("Sign Up",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w900,
                    color: Color.fromARGB(255, 7, 39, 65))
            ),
            const SizedBox(height: 10,),
            Row(
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
                  hintText: "Email ID", prefixIcon: Icon(Icons.alternate_email)),
            ),
            TextFormField(
              controller: _pword,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              obscureText: true,
              validator: (value) {
                if (value!.length < 7) {
                  return "Password must contain minimum of 8 caracters";
                } else if (!value.contains('!')) {
                  return "Password must contain !";
                } else {
                  return null;
                }
              },
              decoration: const InputDecoration(
                hintText: "Password",
                prefixIcon: Icon(Icons.lock),
              ),
            ),
             TextFormField(
              controller: _fname,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              validator: (value) {
                if (value!.length < 6) {
                  return "Enter your full name";
                } else {
                  return null;
                }
              },
              decoration: const InputDecoration(
                hintText: "Full name",
                prefixIcon: Icon(Icons.face),
              ),
            ),
            TextFormField(
              controller: _cname,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              validator: (value) {
                if (value!.length < 6) {
                  return "Enter Company's name";
                } else {
                  return null;
                }
              },
              decoration: const InputDecoration(
                hintText: "Company name",
                prefixIcon: Icon(Icons.house),
              ),
            ),
             MaterialButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => Login(
                            email: _email.text,
                            pword: _pword.text,
                            fname:_fname.text,
                            cname: _cname.text, 
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
                    "Submit ",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
            

          ],
      ),
        )),
    );
  }
    @override 
   void initState() {
    // ignore: todo
    // TODO: implement initState
    _email = TextEditingController();
    _pword = TextEditingController();
    _fname = TextEditingController();
    _cname = TextEditingController();

    super.initState();
  }

  @override
  void dispose() {
    // ignore: todo
    // TODO: implement dispose
    _email.dispose();
    _pword.dispose();
    _fname.dispose();
    _cname.dispose();

    super.dispose();
  }

}
