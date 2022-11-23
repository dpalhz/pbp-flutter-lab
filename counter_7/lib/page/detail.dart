import 'package:counter_7/widgets/drawer.dart';
import 'package:flutter/material.dart';
import 'package:counter_7/model/mywatchlist.dart';
import 'package:counter_7/page/my_watchlist_page.dart';

class MyWatchDetailPage extends StatefulWidget {
  const MyWatchDetailPage({super.key, required this.myWatch});

  final MyWatchList myWatch;

  @override
  State<MyWatchDetailPage> createState() => _MyWatchDetailState();
}

// ignore: camel_case_types
class _MyWatchDetailState extends State<MyWatchDetailPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: const Text("Detail Movie"),
      ),
      drawer: const MyDrawer(),
      body: Container(
          padding: const EdgeInsets.all(5),
          height: 800,
          child: Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 10),
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      widget.myWatch.fields.title,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                  RichText(
                    text: TextSpan(
                      style: const TextStyle(
                        fontSize: 14.0,
                        color: Colors.black,
                        height: 2,
                      ),
                      children: <TextSpan>[
                        const TextSpan(
                            text: 'Release date: ',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        TextSpan(
                            text: '${widget.myWatch.fields.releaseDate}\n'),
                        const TextSpan(
                            text: 'Rating: ',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        TextSpan(text: '${widget.myWatch.fields.rating}/5\n'),
                        const TextSpan(
                            text: 'Status: ',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        TextSpan(
                            text: (widget.myWatch.fields.watched)
                                ? "watched\n"
                                : "unwatched\n"),
                        const TextSpan(
                            text: 'Review: \n',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            )),
                        TextSpan(
                            text: "${widget.myWatch.fields.review}\n",
                            style: const TextStyle(
                              height: 1.2,
                            )),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          )),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Container(
        height: 35,
        margin: const EdgeInsets.all(3),
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const MyWatchListPage()),
            );
          },
          child: const Center(
            child: Text('Back'),
          ),
        ),
      ),
    );
  }
}
