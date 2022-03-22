import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() =>
      _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double? _deviceHeight, _deviceWidth;
  final List<Map> entries = <Map>[
    {
      "pet_name": 'Rover',
      "age": 3,
      "species": 'Jack Russell Terrier',
      "image":
          "https://images.unsplash.com/photo-1644614398468-06fad5e8f8f6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=502&q=80",
      "availabilty": true,
      "distance": "0.5 miles away",
      "notes": "Likes chicken"
    },
    {
      "pet_name": 'Timmy',
      "age": 87,
      "species": 'Tortoise',
      "image":
          "https://images.unsplash.com/photo-1508455858334-95337ba25607?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=876&q=80",
      "availabilty": true,
      "distance": "2 miles away",
      "notes": "A game of fetch takes forever"
    },
    {
      "pet_name": 'Blobby',
      "age": 7,
      "species": 'Rat',
      "image":
          "https://images.unsplash.com/photo-1575485670541-824ff288aaf8?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80",
      "availabilty": true,
      "distance": "3 miles away",
      "notes": "Will bite you if provoked."
    },
    {
      "pet_name": 'Joshua',
      "age": 6,
      "species": 'Ferret',
      "image":
          "https://images.unsplash.com/photo-1615087240969-eeff2fa558f2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80",
      "availabilty": true,
      "distance": "8 miles away",
      "notes": "Does not like being alone"
    },
    {
      "pet_name": 'Apple',
      "age": 87,
      "species": 'Hamster',
      "image":
          "https://images.unsplash.com/photo-1425082661705-1834bfd09dca?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=876&q=80",
      "availabilty": true,
      "distance": "10 miles away",
      "notes": "Sensitive"
    },
    {
      "pet_name": 'Fang',
      "age": 4,
      "species": 'Boxer',
      "image":
          "https://images.unsplash.com/photo-1558349699-1e1c38c05eeb?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80",
      "availabilty": true,
      "distance": "51 miles away",
      "notes": "High blood sugar."
    },
    {
      "pet_name": 'Jimmy',
      "age": 8,
      "species": 'Rabbit',
      "image":
          "https://images.unsplash.com/photo-1518796745738-41048802f99a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=869&q=80",
      "availabilty": true,
      "distance": "6 miles away",
      "notes": "Likes eating flowers"
    },
    {
      "pet_name": 'Oscar',
      "age": 10,
      "species": 'Guinea Pig',
      "image":
          "https://images.unsplash.com/photo-1533152162573-93ad94eb20f6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80",
      "availabilty": true,
      "distance": "4 miles away",
      "notes": "Loves a bit of fuss."
    },
  ];

  @override
  Widget build(BuildContext context) {
    _deviceHeight =
        MediaQuery.of(context).size.height;
    _deviceWidth =
        MediaQuery.of(context).size.width;
    return Scaffold(
        body: Container(
            child: Column(children: <Widget>[
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextField(
          onChanged: (value) {},
          controller: null,
          decoration: InputDecoration(
              labelText:
                  "Search - dogs, rabbits, budgies...",
              hintText: "Search",
              prefixIcon: Icon(Icons.search),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                      Radius.circular(50.0)))),
        ),
      ),
      Stack(
        children: <Widget>[
          TextButton(
            style: ButtonStyle(
              foregroundColor:
                  MaterialStateProperty.all<
                      Color>(Colors.blue),
            ),
            onPressed: () {},
            child: Text('TextButton'),
          ),
          Container(
            color: Color.fromARGB(
                255, 250, 218, 225),
            height: _deviceHeight! * 0.91,
            width: _deviceWidth!,
            child: petCards(),
          )
        ],
      )
    ])));
  }

  Widget petCards() {
    return ListView.separated(
      itemCount: entries.length,
      separatorBuilder:
          (BuildContext context, int index) =>
              const Divider(),
      itemBuilder:
          (BuildContext context, int index) {
        return Container(
          height: _deviceHeight! * 0.5,
          width: _deviceWidth! * 0.5,
          margin: EdgeInsets.all(15.0),
          decoration: BoxDecoration(
            borderRadius:
                BorderRadius.circular(40),
            image: DecorationImage(
              image: NetworkImage(
                  "${entries[index]['image']}"),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
              decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.circular(40),
                  gradient: LinearGradient(
                      colors: [
                        Colors.black12,
                        Colors.black87,
                      ],
                      begin: Alignment.center,
                      stops: [0.4, 1],
                      end: Alignment
                          .bottomCenter)),
              padding: const EdgeInsets.all(8),
              child: Stack(
                children: [
                  Positioned(
                      right: 10,
                      left: 30,
                      bottom: 10,
                      child: Row(
                          crossAxisAlignment:
                              CrossAxisAlignment
                                  .end,
                          mainAxisAlignment:
                              MainAxisAlignment
                                  .spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment:
                                  CrossAxisAlignment
                                      .start,
                              mainAxisSize:
                                  MainAxisSize
                                      .min,
                              children: <Widget>[
                                Text(
                                  "${entries[index]['pet_name']}, ${entries[index]['age']}",
                                  style: TextStyle(
                                      fontFamily:
                                          'Roboto',
                                      decoration:
                                          TextDecoration
                                              .none,
                                      fontSize:
                                          40,
                                      color: Colors
                                          .white),
                                ),
                                Text(
                                  "${entries[index]['distance']}",
                                  style: TextStyle(
                                      fontFamily:
                                          'Roboto',
                                      decoration:
                                          TextDecoration
                                              .none,
                                      fontSize:
                                          20,
                                      color: Colors
                                          .white),
                                ),
                              ],
                            ),
                            Padding(
                              padding:
                                  EdgeInsets.only(
                                      bottom: 16,
                                      right: 20),
                              child: Icon(
                                Icons.favorite,
                                color:
                                    Colors.pink,
                                size: 40.0,
                                semanticLabel:
                                    'Heart',
                              ),
                            )
                          ]))
                ],
              )),
        );
      },
    );
  }
}
