import 'package:converter_app/data.dart';
import 'package:converter_app/model.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Clients>? clients;
  bool _loading = true;

  Future<void> _getData() async {
    clients = await Data().getData();

    _loading = false;
    setState(() {});
  }

  @override
  void initState() {
    _getData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List Example'),
      ),
      body: _loading
          ? Center(child: CircularProgressIndicator())
          : Container(
              child: ListView.builder(
                itemBuilder: (context, index) => _listTile(index),
                itemCount: clients!.length,
              ),
            ),
    );
  }

  Widget _listTile(int index) {
    return ListTile(
      title: Text(clients![index].name.toString()),
      subtitle: Text(clients![index].company.toString()),
    );
  }
}
