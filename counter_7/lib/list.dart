import 'package:counter_7/main.dart';
import 'package:counter_7/form.dart' as form;
import 'package:flutter/material.dart';

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
        drawer: Drawer(
          child: Column(
            children: [
              ListTile(
                title: const Text("Program Counter"),
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const MyHomePage(
                              title: "Counter_7",
                            )),
                  );
                },
              ),
              ListTile(
                title: const Text("Tambah Budget"),
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const form.MyFormPage()),
                  );
                },
              ),
              ListTile(
                title: const Text("Daftar Budget"),
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const form.MyFormPage()),
                  );
                },
              ),
            ],
          ),
        ),
        body: ListView(
          children: [
            for (var item in itemList) ...[
              ListTile(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                  Radius.circular(10),
                )),
                contentPadding: EdgeInsets.only(top: 10, left: 30, right: 20),
                title: Text(item.judul,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    )),
                subtitle: Text("Nominal " + item.nominal.toString()),
                trailing: Text(item.jenis),
                tileColor: Theme.of(context).colorScheme.surfaceVariant,
              ),
            ],
          ],
        ));
  }
}
