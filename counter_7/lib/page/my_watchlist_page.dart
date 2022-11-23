import 'dart:convert';
import 'package:counter_7/page/detail.dart';
import 'package:counter_7/widgets/drawer.dart';
import 'package:flutter/material.dart';
import 'package:counter_7/model/mywatchlist.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(const MyWatchListPage());
}

class MyWatchListPage extends StatefulWidget {
  const MyWatchListPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _MywatchListState();
}

Future<List<MyWatchList>> fetchMyWatchList() async {
  var url = Uri.parse('https://tugas2pbp-dipa.herokuapp.com/mywatchlist/json/');
  var response = await http.get(
    url,
    headers: {
      "Access-Control-Allow-Origin": "*",
      "Content-Type": "application/json",
    },
  );

  // melakukan decode response menjadi bentuk json
  var data = jsonDecode(utf8.decode(response.bodyBytes));

  // melakukan konversi data json menjadi object MyWatchList
  List<MyWatchList> myWatchList = [];
  for (var d in data) {
    if (d != null) {
      myWatchList.add(MyWatchList.fromJson(d));
    }
  }

  return myWatchList;
}

class _MywatchListState extends State<MyWatchListPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: const Text("My Watch List"),
        ),
        drawer: const MyDrawer(),
        body: FutureBuilder(
            future: fetchMyWatchList(),
            builder: (context, AsyncSnapshot snapshot) {
              if (snapshot.data == null) {
                return const Center(child: CircularProgressIndicator());
              } else {
                if (!snapshot.hasData) {
                  return Column(
                    children: const [
                      Text(
                        "Tidak ada My Watch List :(",
                        style:
                            TextStyle(color: Color(0xff59A5D8), fontSize: 20),
                      ),
                      SizedBox(height: 8),
                    ],
                  );
                } else {
                  return ListView.builder(
                      itemCount: snapshot.data!.length,
                      itemBuilder: (_, index) => GestureDetector(
                            onTap: () {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => MyWatchDetailPage(
                                        myWatch: snapshot.data![index])),
                              );
                            },
                            child: Container(
                                margin: const EdgeInsets.symmetric(vertical: 1),
                                padding: const EdgeInsets.all(20.0),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: ((snapshot
                                              .data![index].fields.watched)
                                          ? Colors.green
                                          : Colors.red)),
                                  color: Colors.white,
                                ),
                                child: Row(children: [
                                  Expanded(
                                    child: Text(
                                      "${snapshot.data![index].fields.title}",
                                      style: const TextStyle(
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 30,
                                    child: CheckboxListTile(
                                        value: snapshot
                                            .data![index].fields.watched,
                                        onChanged: (bool? value) {
                                          setState(() {
                                            snapshot.data![index].fields
                                                    .watched =
                                                !snapshot.data![index].fields
                                                    .watched;
                                          });
                                        }),
                                  )
                                ])),
                          ));
                }
              }
            }));
  }
}
