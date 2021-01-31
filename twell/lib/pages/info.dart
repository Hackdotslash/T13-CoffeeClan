import 'package:flutter/material.dart';
import 'package:localstorage/localstorage.dart';

class InfoPage extends StatefulWidget {
  final result;
  InfoPage(this.result);

  @override
  _InfoPageState createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage> {
  final LocalStorage storage = new LocalStorage('some_key');

  

  @override
  Widget build(BuildContext context) {
    var data = widget.result.code.split('_');

    return Scaffold(
      appBar: AppBar(
        title: Text("Twell"),
      ),
      body: Column(
        children: [
          Container(
            child: Text(
              '${data[0]}'
            )
          ),
          Container(
            child: Text(
              '${data[1]}'
            )
          ),
          Container(
            child: Text(
              '${data[2]}'
            )
          ),
        ],
      ),
    );
  }
}