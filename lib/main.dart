import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomepage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomepage extends StatefulWidget {
  const MyHomepage({super.key});

  @override
  State<MyHomepage> createState() => _MyHomepageState();
}

class _MyHomepageState extends State<MyHomepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Layout Builder'),
        ),
        body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            double height = constraints.maxHeight;
            double width = constraints.maxWidth;
            return Column(
              children: [
                Container(
                  height: height * 0.2,
                  width: width,
                  color: Colors.blue,
                  child: Column(
                    children: [
                      Container(
                        color: Colors.amber,
                        height: height * 0.05,
                      ),
                      Container(
                        color: Colors.brown,
                        height: height * 0.05,
                      )
                    ],
                  ),
                ),
                Container(
                  height: height * 0.2,
                  width: width,
                  color: Colors.yellow,
                ),
                Container(
                  height: height * 0.2,
                  width: width,
                  color: Colors.red,
                  child: LayoutBuilder(
                    builder: (p0, p1) {
                      return Column(
                        children: [
                          Container(
                            height: p1.maxHeight * 0.4,
                            color: Colors.pink,
                          ),
                          Container(
                            height: p1.maxHeight * 0.6,
                            color: Colors.yellow,
                          )
                        ],
                      );
                    },
                  ),
                ),
                Container(
                  height: height * 0.2,
                  width: width,
                  color: Colors.blueGrey,
                ),
                Container(
                  height: height * 0.2,
                  width: width,
                  color: Colors.brown,
                  child: LayoutBuilder(
                    builder: (p0, p1) {
                      return Row(
                        children: [
                          Container(
                            color: Colors.yellow[300],
                            width: width * 0.5,
                            height: height,
                          ),
                          Container(
                            color: Colors.blue[300],
                            width: width * 0.5,
                            height: height,
                          )
                        ],
                      );
                    },
                  ),
                ),
              ],
            );
          },
        ));
  }
}
