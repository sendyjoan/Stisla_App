import 'package:flutter/material.dart';
import '../http_helper.dart';

class Register extends StatefulWidget {
  const Register({super.key});
  @override
  State<Register> createState() => _Register();
}

class _Register extends State<Register> {
  doRegister() async {
    final name = txtName.text;
    final email = txtEmail.text;
    final password = txtPassword.text;
    const deviceId = "12345";
    final response =
        await HttpHelper().register(name, email, password, deviceId);
    print(response.body);
    Navigator.pushNamed(context, "/");
  }

  final TextEditingController txtName = TextEditingController(text: 'Testing');
  final TextEditingController txtEmail =
      TextEditingController(text: 'testing@gmail.com');
  final TextEditingController txtPassword =
      TextEditingController(text: 'password');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          color: const Color(0xFFF3F6F9),
          padding: const EdgeInsets.all(20),
          margin: const EdgeInsets.all(5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Register Page',
                style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 24,
                    color: Color.fromARGB(255, 16, 80, 96)),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: txtName,
                decoration: InputDecoration(
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 17),
                  filled: true,
                  fillColor: Colors.white,
                  labelText: 'Name',
                  labelStyle: const TextStyle(
                      color: Color.fromARGB(255, 16, 80, 96),
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Nunito'),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                        width: 3, color: Color.fromARGB(255, 16, 80, 96)),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                        width: 3, color: Color.fromARGB(255, 16, 80, 96)),
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: txtEmail,
                decoration: InputDecoration(
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 17),
                  filled: true,
                  fillColor: Colors.white,
                  labelText: 'Email',
                  labelStyle: const TextStyle(
                      color: Color.fromARGB(255, 16, 80, 96),
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Nunito'),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                        width: 3, color: Color.fromARGB(255, 16, 80, 96)),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                        width: 3, color: Color.fromARGB(255, 16, 80, 96)),
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: txtPassword,
                decoration: InputDecoration(
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 17),
                  filled: true,
                  fillColor: Colors.white,
                  labelText: 'Password',
                  labelStyle: const TextStyle(
                      color: Color.fromARGB(255, 16, 80, 96),
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Nunito'),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                        width: 3, color: Color.fromARGB(255, 16, 80, 96)),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                        width: 3, color: Color.fromARGB(255, 16, 80, 96)),
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 45,
                width: double.infinity,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 16, 80, 96),
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                          //to set border radius to button
                          borderRadius: BorderRadius.circular(15)),
                    ),
                    onPressed: () {
                      doRegister();
                    },
                    child: const Text("Register",
                        style: TextStyle(
                            fontFamily: 'Nunito',
                            fontWeight: FontWeight.bold))),
              ),
            ],
          ),
        ));
  }
}
