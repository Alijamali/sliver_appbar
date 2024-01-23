import 'package:flutter/material.dart';
import 'package:sliver_appbar/custom_item_image.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var listImages = [
      'assets/images/img1.png',
      'assets/images/img2.png',
      'assets/images/img3.png',
      'assets/images/img4.png',
      'assets/images/img5.png',
      'assets/images/img6.png',
      'assets/images/img7.png',
      'assets/images/img8.png',
      'assets/images/img9.png',
      'assets/images/img10.png',
      'assets/images/img11.png',
      'assets/images/img12.png',
      'assets/images/img13.png',
      'assets/images/img14.png',
    ];

    return MaterialApp(
      title: 'Sliver Appbar',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              expandedHeight: MediaQuery.of(context).size.height * 0.50,
              backgroundColor: Colors.black,
              floating: false,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                background: Image.asset(
                  listImages[4],
                  fit: BoxFit.cover,
                ),
                title: const Text(
                  'F i r e  H a n d s',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.amber,
                      fontStyle: FontStyle.italic),
                ),
                expandedTitleScale: 2.2,
              ),


            ),

            SliverGrid(
              delegate: SliverChildBuilderDelegate(
                (context, index) =>
                    CustomItemImage(pathAsset: listImages[index]),
                childCount: listImages.length,
              ),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2),
            )
          ],
        ),
      ),
    );
  }
}
