import 'package:flutter/material.dart';
import 'package:flutter_1/drawer_page.dart';
import 'package:flutter_1/gridview.dart';
import 'package:flutter_1/image_picker_page.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class PageViewExample extends StatefulWidget {
  const PageViewExample({Key? key}) : super(key: key);

  @override
  State<PageViewExample> createState() => _PageViewExampleState();
}

class _PageViewExampleState extends State<PageViewExample> {
  PageController _controller = PageController();
var _firstItemIndex=0;

List<Widget> model=[GridViewPage(),
ImagePickerPage()];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page View"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.75,
             child: PageView.builder(
               onPageChanged: (int index){

               },
                padEnds: false,
                controller: _controller,
                itemBuilder: (context, index) {
                  return model[index];
                },
                itemCount: model.length,
              ),

            ),
            SizedBox(
              height: 30,
            ),
            SmoothPageIndicator(
              controller: _controller,
              count: 3,
              effect: CustomizableEffect(
                activeDotDecoration: DotDecoration(
                  width: 32,
                  height: 12,
                  color: Colors.indigo,
                  rotationAngle: 180,
                  verticalOffset: -10,
                  borderRadius: BorderRadius.circular(24),
                  dotBorder: DotBorder(
                    padding: 2,
                    width: 2,
                    color: Colors.indigo,
                  ),
                ),
                dotDecoration: DotDecoration(
                  width: 24,
                  height: 12,
                  color: Colors.grey,
                  dotBorder: DotBorder(
                    padding: 2,
                    width: 2,
                    color: Colors.grey,
                  ),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(2),
                      topRight: Radius.circular(16),
                      bottomLeft: Radius.circular(16),
                      bottomRight: Radius.circular(2)),
                  //borderRadius: BorderRadius.circular(16),
                  verticalOffset: 0,
                ),
                spacing: 6.0,
                activeColorOverride: (i) => colors[i],
                inActiveColorOverride: (i) => colors[i],
              ),
              // effect: const WormEffect(
              //   dotHeight: 16,
              //   dotWidth: 16,
              //   type: WormType.thinUnderground,
              // ),
            ),
          ],
        ),
      ),
    );
  }
}

final colors = const [
  Colors.red,
  Colors.green,
  Colors.amberAccent,
  Colors.blue,
  Colors.amber,
];
