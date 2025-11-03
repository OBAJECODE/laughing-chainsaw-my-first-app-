import 'package:flutter/material.dart';

class ListPage extends StatefulWidget {
  const ListPage({super.key});

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ListPage();
  }
}

class _ListPage extends State<ListPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(body: _bodyUI());
  }

  Widget _bodyUI() {
    return ListView.builder(
      itemCount: 20,
      itemBuilder: (context, index) {
        return ListTile(title: Text('get your money stuffed $index'));
      },
    );
  }
}
