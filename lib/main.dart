import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = ThemeData(
      primarySwatch: Colors.deepOrange,
    );
    return MaterialApp(
      theme: theme.copyWith(
        colorScheme: theme.colorScheme.copyWith(
            secondary: Colors.orange
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('App Title'),
        ),

        // body: containerLesson(),
        // body: Container(
        //   color: Colors.blueGrey,
        //   // width: ,
        //   height: 500,
        //   child: Column(
        //   mainAxisSize: MainAxisSize.min,
        //   // mainAxisAlignment: MainAxisAlignment.spaceAround,
        //   crossAxisAlignment: CrossAxisAlignment.end,
        //   children: [
        //     Container(
        //       width: 70,
        //       height: 100,
        //       color: Colors.orange,
        //       child: const Text('Container 1'),
        //     ),
        //     Container(
        //       width: 70,
        //       height: 100,
        //       color: Colors.orange,
        //       child: const Text('Container 2'),
        //     ),
        //     Container(
        //       width: 70,
        //       height: 100,
        //       color: Colors.orange,
        //       child: const Text('Container 3'),
        //     )
        //   ]
        // ),
        //   /*Row(
        //     mainAxisAlignment: MainAxisAlignment.spaceAround,
        //     mainAxisSize: MainAxisSize.max,
        //     crossAxisAlignment: CrossAxisAlignment.end,
        //     children: [
        //       Container(
        //         width: 70,
        //         height: 100,
        //         color: Colors.green,
        //         child: const Text('Container 1'),
        //       ),
        //       Container(
        //         width: 70,
        //         height: 100,
        //         color: Colors.green,
        //         child: const Text('Container 1'),
        //       ),
        //       Container(
        //         width: 70,
        //         height: 100,
        //         color: Colors.green,
        //         child: const Text('Container 1'),
        //       )
        //     ],
        //   )*/
        // ),
        body: Container(
          margin: const EdgeInsets.all(5.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: oneRowOneColumn(),
          ),
        ),

        floatingActionButton: FloatingActionButton(
          onPressed: () {  },
          child: const Icon(
            Icons.add_box_rounded,
            color: Colors.yellow
          ),
        ),
      ),
    );
  }

  List<Widget> overFlowProblem() {
    return [
      Container(
        width: 100,
        height: 100,
        color: Colors.blue,
      ),
      Container(
        width: 100,
        height: 100,
        color: Colors.red,
      ),
      Container(
        width: 100,
        height: 100,
        color: Colors.green,
      ),
      Container(
        width: 100,
        height: 100,
        color: Colors.orange,
      ),
      Container(
        width: 100,
        height: 100,
        color: Colors.pink,
      ),
    ];
  }

  List<Widget> overflowSolutionWithExpanded() {
    return [
      Expanded(
        flex: 3,
        child: Container(
          width: 50,
          height: 100,
          color: Colors.blue,
        ),
      ),
      Expanded(
        flex: 5,
        child: Container(
          width: 50,
          height: 100,
          color: Colors.red,
        ),
      ),
      Expanded(
        child: Container(
          width: 50,
          height: 100,
          color: Colors.green,
        ),
      ),
      Expanded(
        child: Container(
          width: 50,
          height: 100,
          color: Colors.orange,
        ),
      ),
      Expanded(
        child: Container(
          width: 50,
          height: 100,
          color: Colors.pink,
        ),
      )
    ];
  }

  List<Widget> overflowSolutionWithFlexible() {
    return [
      Flexible(
        fit: FlexFit.tight,
        child: Container(
          // width: 800,
          height: 100,
          color: Colors.blue,
        ),
      ),
      Flexible(
        fit: FlexFit.loose,
        child: Container(
          width: 100,
          height: 100,
          color: Colors.red,
        ),
      ),
    ];
  }

  List<Widget> oneRowOneColumn() {
    return [
      Flexible(
        child: firstRowOfColumn(),
      ),
      flexibleContainer(Colors.green.shade200, '2'),
      flexibleContainer(Colors.green.shade300, '3'),
      flexibleContainer(Colors.green.shade400, '4'),
      flexibleContainer(Colors.green.shade500, '5'),
      flexibleContainer(Colors.green.shade600, '6'),
      flexibleContainer(Colors.green.shade700, '7'),
      flexibleContainer(Colors.green.shade800, '8'),
      flexibleContainer(Colors.green.shade900, '9'),
      flexibleContainer(Colors.green.shade900, '10'),
      Flexible(
        flex: 2,
          child: Container(
            // margin: const EdgeInsets.all(5.0),
            // height: 50,
            width: 50,
            color: Colors.orange,
            alignment: Alignment.center,
            child: const Text("11"),
          )
      )
    ];
  }

  Row firstRowOfColumn() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        flexibleContainer(Colors.green.shade100, '1'),
        flexibleContainer(Colors.green.shade200, '2'),
        flexibleContainer(Colors.green.shade300, '3'),
        flexibleContainer(Colors.green.shade400, '4'),
        flexibleContainer(Colors.green.shade500, '5'),
        flexibleContainer(Colors.green.shade600, '6'),
      ],
    );
  }


  Flexible flexibleContainer(Color color, String text) {
    return Flexible(
      child: Container(
        // margin: const EdgeInsets.all(5.0),
        height: 50,
        width: 50,
        color: color,
        alignment: Alignment.center,
        child: Text(text),
      )
    );
  }


  Widget containerLesson() {
    return Center(
      child: Container(
        padding: const EdgeInsets.all(20),
        // color: Colors.blueGrey,
        /*child: const FlutterLogo(
          size: 120,
        ),*/
        width: 300,
        height: 200,
        decoration: BoxDecoration(
          color: Colors.blueGrey,
          image: const DecorationImage(
            image: NetworkImage(
                'https://media.istockphoto.com/id/1322277517/photo/wild-grass-in-the-mountains-at-sunset.jpg?s=612x612&w=0&k=20&c=6mItwwFFGqKNKEAzv0mv6TaxhLN3zSE43bWmFN--J5w=',
            ),
            fit: BoxFit.fill
          ),
          border: Border.all(width: 2, color: Colors.amber),
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(35)
          ),
          boxShadow: const [
            BoxShadow(
              // blurStyle: BlurStyle.solid,
              // spreadRadius: 1.0,
              color: Colors.amber,
              blurRadius: 30.0,
              offset: Offset(-6, 10)
            )
          ]
        ),
      )
    );
  }
}
