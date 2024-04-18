import 'package:flutter/material.dart';

class detailsPage extends StatefulWidget {
  const detailsPage({super.key});

  @override
  State<detailsPage> createState() => _detailsPageState();
}

class _detailsPageState extends State<detailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
        actions: [
          Row(
            children: [
              Icon(
                Icons.favorite,
              ),
              Icon(
                Icons.share,
              ),
            ],
          )
        ],
      ),
    );
  }
}
