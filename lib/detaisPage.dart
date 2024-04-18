import 'package:flutter/material.dart';

class detailsPage extends StatefulWidget {
  const detailsPage({super.key});

  @override
  State<detailsPage> createState() => _detailsPageState();
}

class _detailsPageState extends State<detailsPage> {
  @override
  Widget build(BuildContext context) {
    Size mq = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back)),
        actions: [
          Row(
            children: [
              Icon(
                Icons.favorite,
              ),
              SizedBox(
                width: 10,
              ),
              Icon(
                Icons.share,
              ),
              SizedBox(
                width: 10,
              ),
            ],
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Container(
                width: mq.width * 9,
                height: 150,
                color: Colors.amber,
              )
            ],
          ),
        ),
      ),
    );
  }
}
