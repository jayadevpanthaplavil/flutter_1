import 'package:flutter/material.dart';

class ProductsPage extends StatefulWidget {
  const ProductsPage({Key? key}) : super(key: key);

  @override
  State<ProductsPage> createState() => _ProductsPageState();
}

class _ProductsPageState extends State<ProductsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu,color: Colors.black,),
        title: Text("Amazon",style: TextStyle(color: Colors.black),),
        backgroundColor: Colors.cyanAccent,
      ),
      body: ListView.separated(
          itemBuilder: (BuildContext context, int index) {
            return Card(
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Container(
                      width: 150,
                      height: 150,
                      // color: Colors.red,
                      child:
                          Image.network("https://i-store.net/_sh/63/6343.jpg"),
                    ),
                  ),
                  Positioned(
                    top: 23,
                    left: 142,
                    child: Container(
                      child: Text("Iphone 14 Pro Max",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                          )),
                    ),
                  ),
                  Positioned(
                    top: 45,
                    left: 142,
                    child: Container(
                      child: Text("1 TB | Color - Purple",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                          )),
                    ),
                  ),
                  Positioned(
                    top: 100,
                    left: 142,
                    child: Row(
                      children: [
                        Container(
                          child: Text("₹ 1,75,000 ",
                              style: TextStyle(
                                color: Colors.red,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              )),
                        ),
                        Container(
                          child: Text("MRP: ₹ 2,00,000 ",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.normal,
                                decoration: TextDecoration.lineThrough
                              )),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: 23,
                    right: 10,
                    child: Container(
                      child: FloatingActionButton.small(
                        onPressed: (){},
                        child: Icon(Icons.favorite),
                        backgroundColor: Colors.red,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 5,
                      left: 0,
                      child: Container(

                        height: 20,
                        child: Text('Best seller'),
                        color: Colors.blue,

                      ),
                      ),


                  // Container(
                  //   width: MediaQuery.of(context).size.width,
                  //   height: MediaQuery.of(context).size.height,
                  //   child: Image.asset(
                  //     "assets/images/kalyansilks.jpg",
                  //     fit: BoxFit.fitHeight,
                  //   ),
                  // ),
                  // Positioned(
                  //   top: 40,
                  //   left: 0,
                  //   child: Container(
                  //     height: 110,
                  //     child: Image.asset(
                  //       "assets/images/ribbon.png",
                  //       fit: BoxFit.fill,
                  //     ),
                  //   ),
                  // ),
                  // Positioned(
                  //   top: 85,
                  //   left: 42,
                  //   child: Container(
                  //     child: Text(
                  //         "ആടി സെയിൽ",
                  //         style: TextStyle(
                  //           color: Colors.white,
                  //           fontSize: 19,
                  //           fontWeight: FontWeight.bold,)
                  //     ),
                  //   ),
                  // ),
                  // Positioned(
                  //   bottom: 20,
                  //   right: 20,
                  //   child: Row(
                  //     children: [
                  //       Container(
                  //         child: FloatingActionButton.extended(onPressed: (){}, label: const Text('Add'),
                  //           icon: const Icon(Icons.add),
                  //         ),
                  //       ),
                  //       SizedBox(
                  //         width: 10,
                  //       ),
                  //       Container(
                  //         child: FloatingActionButton(
                  //           onPressed: (){},
                  //           child: Icon(Icons.favorite),
                  //           backgroundColor: Colors.red,
                  //         ),
                  //       ),
                  //     ],
                  //   ),
                  // )
                ],
              ),
            );
          },
          separatorBuilder: (BuildContext context, int index) {
            return Divider();
          },
          itemCount: 5),
      drawer: Drawer(),
    );
  }
}
