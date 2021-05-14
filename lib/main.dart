import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var isExpandedList = new List<bool>.generate(2, (index) => false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Demo'),
      ),
      body: Container(
        child: ListView(
          children: [
            ExpansionPanelList(
              children: [
                ExpansionPanel(
                  headerBuilder: (context, isOpen) {
                    return Text('headerBuilder0');
                  },
                  body: Text('body'),
                  isExpanded: isExpandedList[0],
                ),
                ExpansionPanel(
                  headerBuilder: (context, isOpen) {
                    return Text('headerBuilder1');
                  },
                  body: Text('body'),
                  isExpanded: isExpandedList[1],
                ),
              ],
              expansionCallback: (i, isOpen) {
                setState(() => isExpandedList[i] = !isOpen);
              },
            ),
          ],
        ),
      ),
    );
  }
}
