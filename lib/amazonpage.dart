import 'package:flutter/material.dart';

class AmazonPage extends StatefulWidget {
  const AmazonPage({Key? key}) : super(key: key);

  @override
  State<AmazonPage> createState() => _AmazonPageState();
}

class _AmazonPageState extends State<AmazonPage> {
  
  List<Deals> dealslist=[Deals(image: 'assets/images/bag.jpeg',name1: "Rucksack bag"),
    Deals(image: 'assets/images/ironbox.jpeg',name1: "Iron box"),
    Deals(image: 'assets/images/laptop.jpg',name1: 'MacBook'),
    Deals(image: 'assets/images/speaker.jpeg',name1: 'Marshall')];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.menu,
          color: Colors.black,
        ),
        title: Text(
          "Amazon",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.cyanAccent,
      ),
      body: SingleChildScrollView(
        child: Column(

          children: [
            Container(
              width: MediaQuery.of(context).size.width,
                child: Align(alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Deals for you",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold,),),
                    ))),
            Container(
              height: MediaQuery.of(context).size.height,
              child: GridView.builder(
                  itemCount: dealslist.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, crossAxisSpacing: 4, mainAxisSpacing: 8),
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: (){
                        // print("${dealslist[index].name1}");
                        // final snackbar=SnackBar(content: Text('${dealslist[index].name1}'),
                        //     action: SnackBarAction(
                        //       label: 'Undo',
                        //       onPressed: () {
                        //         // Some code to undo the change.
                        //       },
                        //     ),);
                        // ScaffoldMessenger.of(context).showSnackBar(snackbar);
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Bag()));
                      },
                      child: Stack(children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 30.0),
                          child: Container(
                            child: Image.asset("${dealslist[index].image}"),
                          ),
                        ),
                        Positioned(
                          top: 170,
                          left: 8,
                          child: Container(
                            height: 20,
                            decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.all(Radius.circular(4))),
                            child: Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: Text(
                                "73% off",
                                style: TextStyle(fontSize: 14,color: Colors.white),
                              ),
                            ),
                          ),
                        ),

                        Positioned(
                          top: 170,
                          left: 68,
                          child: Container(
                            height: 50,
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Text(
                                "Deal of the Day",
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.red),
                              ),
                            ),
                          ),
                        ),

                      ]),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}

class Deals{
 late String image,name1;
  Deals({required this.image,required this.name1});
}

class Bag extends StatelessWidget {
  const Bag({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.menu,
          color: Colors.black,
        ),
        title: Text(
          "Amazon",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.cyanAccent,
      ),
      body: GestureDetector(
          onHorizontalDragEnd: (details){
          Navigator.pop(context);
        },
        child: Container(
          child: Image.asset('assets/images/bag.jpeg'),
        ),
      ),
    );
  }
}
