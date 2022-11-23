import 'package:counter_7/main.dart';
import 'package:counter_7/form.dart' as form;
import 'package:flutter/material.dart';
import 'package:counter_7/widgets/drawer.dart';

var itemList = form.list;

class MyListPage extends StatefulWidget {
  const MyListPage({super.key});

  @override
  State<MyListPage> createState() => _MyListPageState();
}

class _MyListPageState extends State<MyListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Data Budget'),
        ),
        drawer: const MyDrawer(),
        body: ListView(
          children: [
            for (var item in itemList) ...[
              ListTile(
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                  Radius.circular(10),
                )),
                contentPadding: const EdgeInsets.only(
                    top: 10, left: 30, right: 20, bottom: 0),
                title: Text(item.judul,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                    )),
                subtitle: Text("Nominal ${item.nominal}"),
                trailing: Text(item.jenis),
                tileColor: Theme.of(context).colorScheme.surfaceVariant,
              ),
            ],
          ],
        ));
  }
}
