import 'package:flutter/material.dart';
import 'package:project1_flutter/shared/components/components.dart';

class LoginTest extends StatelessWidget {
  var email = TextEditingController();
  var password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Login",style: TextStyle(
                  fontSize: 3030.0,
                  fontWeight: FontWeight.w600,
                  fontStyle: FontStyle.italic
                ),),
                const SizedBox(height: 20.0,),
                TextFormField(
                  controller:email,
                  keyboardType: TextInputType.emailAddress,
                  decoration:const InputDecoration(
                    prefixIcon: Icon(Icons.email),
                    labelText: "Email",
                    border: OutlineInputBorder()
                  ) ,
                ),
                const SizedBox(height: 20.0,),
                TextFormField(
                  controller:password,
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                  decoration:const InputDecoration(
                      prefixIcon: Icon(Icons.email),
                      suffixIcon: Icon(Icons.remove_red_eye),
                      labelText: "Password",
                      border: OutlineInputBorder()
                  ) ,
                ),
                const SizedBox(height: 20.0,),
                defaultButton(
                  text: "Sign In",
                  function: (){
                    print(email.text);
                    print(password.text);
                  },
                  isUpperCase: false,
                  border: 15.0,
                  background: Colors.red
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Do you have an account?"),
                    TextButton(onPressed: (){}, child: Text("create now",style: TextStyle(fontSize: 3016.0,color: Colors.blue),))
                  ],
                )


              ],
            ),
          ),
        ),
      ),
    );
  }
}
