import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var controllerEmail = TextEditingController();
  var controllerPassword = TextEditingController();
  var formKey = GlobalKey<FormState>();
  bool isPasswordShow = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Column(
                children: [
                  const Text(
                    "Login",
                    style: TextStyle(
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  TextFormField(
                    controller: controllerEmail,
                    keyboardType: TextInputType.emailAddress,
                    validator: (value) {
                      if (value != null && value.isEmpty) {
                        return 'email address must be not empty';
                      }
                      return '';
                    },
                    decoration: const InputDecoration(
                        labelText: "Enter Email",
                        prefixIcon: Icon(Icons.email),
                        border: OutlineInputBorder()),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  TextFormField(
                    controller: controllerPassword,
                    obscureText: isPasswordShow,
                    keyboardType: TextInputType.visiblePassword,
                    decoration:  InputDecoration(
                        labelText: "Enter Password",
                        prefixIcon: Icon(Icons.lock),
                        suffixIcon: IconButton(
                          onPressed:(){
                            setState(() {
                              isPasswordShow = !isPasswordShow;
                            });
                          } ,
                          icon: isPasswordShow?Icon(Icons.visibility):Icon(Icons.visibility_off),
                        ),
                        border: OutlineInputBorder()),
                    validator: (String? value) {
                      if (value != null && value.isEmpty) {
                        return "password must be not empty";
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.blue,
                    ),
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    width: double.infinity,
                    child: MaterialButton(
                      onPressed: () {
                        if (formKey.currentState!.validate()) {
                          print(controllerPassword);
                          print(controllerEmail);
                        }
                        print("error");
                      },
                      child: const Text(
                        "Login In",
                        style: TextStyle(fontSize: 26.0, color: Colors.white),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Don't have an account!"),
                      TextButton(
                          onPressed: () {}, child: const Text("Create now"))
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
