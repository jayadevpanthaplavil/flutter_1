import 'package:flutter/material.dart';
import 'package:flutter_1/alertbox.dart';
import 'package:flutter_1/amazonpage.dart';
import 'package:flutter_1/animated_align.dart';
import 'package:flutter_1/animated_builder.dart';
import 'package:flutter_1/animated_container.dart';
import 'package:flutter_1/animated_opacity.dart';
import 'package:flutter_1/animated_positioned.dart';
import 'package:flutter_1/animated_size.dart';
import 'package:flutter_1/autosized_text.dart';
import 'package:flutter_1/carousel_slider.dart';
import 'package:flutter_1/contacts.dart';
import 'package:flutter_1/contacts_column.dart';
import 'package:flutter_1/dob.dart';
import 'package:flutter_1/dragndrop.dart';
import 'package:flutter_1/drawer_page.dart';
import 'package:flutter_1/esys_share_example.dart';
import 'package:flutter_1/expandable_pageview.dart';
import 'package:flutter_1/flutter_contacts_page.dart';
import 'package:flutter_1/gridview.dart';
import 'package:flutter_1/gridview2.dart';
import 'package:flutter_1/gridview3.dart';
import 'package:flutter_1/image_picker_page.dart';
import 'package:flutter_1/login.dart';
import 'package:flutter_1/otp_text_field.dart';
import 'package:flutter_1/pageview_example.dart';
import 'package:flutter_1/permission_handler_page.dart';
import 'package:flutter_1/productspage.dart';
import 'package:flutter_1/progress_dialog.dart';
import 'package:flutter_1/shared_preferences_login.dart';
import 'package:flutter_1/signup.dart';
import 'package:flutter_1/sliver_app_bar.dart';
import 'package:flutter_1/sqflite_example_part2.dart';
import 'package:flutter_1/sqflite_example.dart';
import 'package:flutter_1/stackpage.dart';
import 'package:flutter_1/staggered_grid.dart';
import 'package:flutter_1/staggered_grid2.dart';
import 'package:flutter_1/staggered_grid3.dart';
import 'package:flutter_1/tabbar_example.dart';
import 'package:flutter_1/table_page.dart';
import 'package:flutter_1/timepicker.dart';
import 'package:flutter_1/toast.dart';
import 'package:flutter_1/tween_page.dart';
import 'package:flutter_1/zoom_drawer.dart';
import 'package:shared_preferences/shared_preferences.dart';

// Future<void> main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   SharedPreferences pref=await SharedPreferences.getInstance();
//   var logged=pref.getBool('logged');
//   print("Main - ${logged}");
//   runApp(MaterialApp(
//     debugShowCheckedModeBanner: false,
//     home: logged==null?HomeScreen(): Dashboard(),
//   ));
// }

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home:MyHomePage(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leading: Icon(Icons.menu),
        leading: IconButton(
          onPressed: () => {},
          icon: Icon(Icons.menu),
        ),
        centerTitle: true,
        title: Text("App"),
        actions: [
          IconButton(
            onPressed: () => {
              print("Search button pressed"),
            },
            icon: Icon(Icons.search),
            tooltip: "Search",
          ),
          IconButton(
            onPressed: () => {},
            icon: Icon(Icons.add_alert),
            tooltip: "Snackbar",
          ),
        ],
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Padding(
          //   padding: const EdgeInsets.all(10.0),
          //   child: Container(
          //     height: 400,
          //     width: MediaQuery.of(context).size.width,
          //     decoration: BoxDecoration(
          //       image: DecorationImage(
          //         image: NetworkImage(
          //             'https://images.freeimages.com/images/large-previews/ddf/tour-d-eiffel-1447025.jpg'),
          //         fit: BoxFit.cover,
          //       ),
          //     ),
          //     child: Center(child: Text("Text")),
          //   ),
          // ),
          // Padding(
          //   padding: const EdgeInsets.all(15.0),
          //   child: Container(
          //     child: Image.asset('assets/images/flutter.png', fit: BoxFit.fill),
          //     height: 100,
          //     width: 100,
          //   ),
          // ),

          // Card(
          //   elevation: 10,
          //   color: Colors.blueAccent[100],
          //   shape:RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(15))) ,
          //   child: Container(
          //     height: 100,
          //     width: 200,
          //     child: Center(child: Text("test")),
          //   ),
          // ),

          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(15.0))),
                      hintText: "First Name",
                      labelText: "First Name"),
                ),
              ],
            ),
          )

          // Container(
          //   height: 200,
          //   width: 200,
          //   child: Image.network(
          //     'https://banner2.cleanpng.com/20180409/zte/kisspng-dart-google-developers-flutter-android-darts-5acbd976aea304.6247890515233089187153.jpg'),),

          // IconButton(onPressed: (){},icon: Icon(Icons.menu),),

          // TextButton(
          //   style: TextButton.styleFrom(
          //       foregroundColor: Colors.red,
          //       shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(9)))),
          //   onPressed: () {},
          //   child: Text('TextButton'),
          // ),

          // ElevatedButton(
          //   onPressed: () {},
          //   child: Text('Looks like a RaisedButton'),
          // ),
          //
          // OutlinedButton(
          //   style: OutlinedButton.styleFrom(
          //     shape: StadiumBorder(),
          //     side: BorderSide(width: 2, color: Colors.red),
          //   ),
          //   onPressed: () {},
          //   child: Text('OutlineButton with custom shape and border'),
          // ),

          // Text(
          //   "Jayadev",
          //   style: TextStyle(
          //     fontWeight: FontWeight.bold,
          //     color: Colors.red,
          //     fontSize: 30,
          //   ),
          // ),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //   children: [
          //     Text(
          //       "zoople",
          //       style: TextStyle(fontWeight: FontWeight.bold),
          //     ),
          //     Text("Technologies"),
          //     Text("Vazhakala"),
          //     Text("Kochi"),
          //   ],
          // ),
        ],
      )),
      drawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('Drawer Header'),
            ),
            ListTile(
              title: const Text('Item 1'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            ListTile(
              title: const Text('Item 2'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
          ],
        ),
      ),
    );
  }
}
