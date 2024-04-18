import 'package:flutter/material.dart';
import 'package:swiggi_new/detaisPage.dart';

class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    Size mq = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.location_on,
                    color: Colors.orange,
                  ),
                  Text(
                    "Wales",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Icon(Icons.keyboard_arrow_down_sharp)
                ],
              ),
              const Text(
                "  Talap, Kerala 670017, India",
                style: TextStyle(color: Colors.black45, fontSize: 12),
              )
            ],
          ),
        ),
        actions: const [
          Icon(
            Icons.person_pin,
            size: 46,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Container(
                width: mq.width * .95,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Colors.black26),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Search for Cake",
                      style: TextStyle(color: Colors.black54),
                    ),
                    SizedBox(
                      width: mq.width * .4,
                    ),
                    Container(
                      child: Row(
                        children: [
                          Icon(
                            Icons.search,
                            color: Colors.white38,
                          ),
                          Icon(
                            Icons.mic,
                            color: Colors.orange,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: mq.width * .9,
              height: 140,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://cdn.grabon.in/gograbon/images/merchant/1610000375685.png"),
                      fit: BoxFit.fill)),
            ),
            SizedBox(
              height: 20,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
              Container(
                padding: EdgeInsets.all(8),
                width: mq.width * .4,
                height: 70,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black26),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Row(
                  children: [
                    Text(
                      "MEALS \nFROM ₹199",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    Image.network(
                        "http://www.nomad-cuisine.com/wp-content/uploads/2020/04/Sweet-And-Sour-Chicken-With-Jasmine-Rice.png")
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(8),
                width: mq.width * .4,
                height: 70,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black26),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Row(
                  children: [
                    Text(
                      "AWARD \nWINNNERS",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    Image.network(
                        "http://www.nomad-cuisine.com/wp-content/uploads/2020/04/Sweet-And-Sour-Chicken-With-Jasmine-Rice.png")
                  ],
                ),
              )
            ]),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 250),
              child: Text(
                "Top Rated Near You",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 160,
              width: mq.width,
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => detailsPage(),
                      ));
                },
                child: ListView.builder(
                  itemCount: 4,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 250,
                        child: Column(
                          children: [
                            Container(
                              width: mq.width * .28,
                              height: 140,
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  color: Colors.amber,
                                  image: DecorationImage(
                                      image: NetworkImage(img[index]),
                                      fit: BoxFit.cover)),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 99),
              child: Column(
                children: [
                  Text(
                    "BECOUSE YOU VIEWED WESTING BURGERS",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text("Here are some featured resyaurants for you")
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 160,
              width: mq.width,
              child: ListView.builder(
                itemCount: 4,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 250,
                      child: Column(
                        children: [
                          Container(
                            width: mq.width * .28,
                            height: 140,
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                color: Colors.amber,
                                image: DecorationImage(
                                    image: NetworkImage(img[index]),
                                    fit: BoxFit.cover)),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  final List img = [
    "https://asset22.ckassets.com/resources/image/staticpage_images/Swiggy-Infographic%20-%202nd%20Fold-1577087049.jpg",
    "https://www.unionbankofindia.co.in/images/swiggy.jpg",
    "https://asset22.ckassets.com/resources/image/staticpage_images/Swiggy-Infographic%20-%202nd%20Fold-1577087049.jpg",
    "https://www.unionbankofindia.co.in/images/swiggy.jpg"
  ];
}
