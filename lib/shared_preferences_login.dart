import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late bool logged;


  @override
  void initState() {
    super.initState();
    login();
  }

  final _formkey=GlobalKey<FormState>();
  var passwordController=TextEditingController();
  var usernameController=TextEditingController();



  Future<void> login() async {
   if(_formkey.currentState!.validate()){
     print("validated");
     if(usernameController.text=="jayadev" && passwordController.text=="123"){
       print("Logged in");
       SharedPreferences pref=await SharedPreferences.getInstance();
       pref.setBool('logged',true);
       Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Dashboard(data: usernameController.text)));
     }
     else{
       print("Wrong credentials");
     }
   }
   else{
     print("validation error");
   }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin:EdgeInsets.only(top: 170),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Form(
              key: _formkey,
              child: Column(
                children: [
                  TextFormField(
                    controller: usernameController,
                    decoration: InputDecoration(
                      icon: Icon(Icons.person),
                      labelText: "Username",
                      border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10)))
                    ),
                    validator: (String? value){
                      if(value!.isEmpty){
                        return "Username must not be empty";
                      }
                    },
                  ),
                  SizedBox(height: 20,),
                  TextFormField(
                    obscureText: true,
                    controller: passwordController,
                    decoration: InputDecoration(
                        icon: Icon(Icons.password),
                        labelText: "Password",
                        border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10)))
                    ),
                    validator: (String? value){
                      if(value!.isEmpty){
                        return "Password must not be empty";
                      }
                    },
                  ),
                  SizedBox(height: 20,),
                  Container(
                    width: MediaQuery.of(context).size.width *0.50,
                    child: ElevatedButton(onPressed: (){
                      login();
                    }, child: Text("Login")),
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

class Dashboard extends StatefulWidget {
  var data;
  Dashboard({Key? key,  this.data }) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {



  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: Text("Dashboard"),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("${widget.data}"),
            ElevatedButton(onPressed: () async {
              SharedPreferences pref=await SharedPreferences.getInstance();
              pref.remove('logged');
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
            }, child: Text("Logout"))
          ],
        ),
      ),
    );
  }
}
