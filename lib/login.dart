import 'package:flutter/material.dart';

class LoginApp extends StatelessWidget {
  const LoginApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  var usernameController=TextEditingController();
  var passwordController=TextEditingController();
  final _formkey=GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){}, icon:Icon(Icons.menu)),
        title: Text("Login App"),
      ),
      body:SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Form(
              key: _formkey,
              // autovalidateMode: AutovalidateMode.always,

              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  TextFormField(
                    // autovalidateMode: AutovalidateMode.always,
                    controller: usernameController,
                    decoration: InputDecoration(
                      icon: Icon(Icons.person),
                      labelText: "Username",
                      border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(15.0)))
                    ),
                    validator: (String? value){
                      if(value!.isEmpty){
                        return "Username must not be empty!";
                      }
                      //return (value != null && value.contains('@')) ? 'Do not use the @ char.' : null;
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),

                  TextFormField(
                    // autovalidateMode: AutovalidateMode.always,
                    controller: passwordController,
                    obscureText: true,
                    decoration: InputDecoration(
                        icon: Icon(Icons.password),
                        labelText: "Password",
                        border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(15.0)))
                    ),
                    validator: (String? value){
                      if(value!.isEmpty){
                        return "Password must not be empty!";
                      }
                      //return (value != null && value.contains('@')) ? 'Do not use the @ char.' : null;
                    },
                  ),

                  // TextField(
                  //   decoration: InputDecoration(
                  //     border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(15.0))),
                  //     labelText: "Username",
                  //   ),
                  //   controller: usernameController,
                  // ),
                  // SizedBox(
                  //   height: 20,
                  // ),
                  // TextField(
                  //   obscureText: true,
                  //   decoration: InputDecoration(
                  //     border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(15.0))),
                  //       labelText: "Password"
                  //   ),
                  //   controller: passwordController,
                  // ),


                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(onPressed: (){}, child: Text("Forgot Password?")),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),

                  ElevatedButton(onPressed: (){
                    if(_formkey.currentState!.validate()){print("Validated");}
                    print(usernameController.text);
                  }, child: Text("Login")),

                  Container(child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Not a member?"),
                      TextButton(onPressed: (){}, child: Text("SignUp")),
                    ],
                  )),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
