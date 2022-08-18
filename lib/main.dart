import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
          body: ListView(
        children: [
          Container(
            width: 200,
            height: 300,
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(25),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFieldExample1(),
                Text('사람은?'),
              ],
            ),
          ),
          SizedBox(
            height: 50,
          ),
          CardDeckButton(25, '처음만난사이\n1'),
          CardDeckButton2(30, 'ada'),
          CardDeckButton3(30, 'ada'),
          Container(
            height: 700,
            child: GridView.count(
              primary: false,
              padding: const EdgeInsets.all(20),
              crossAxisSpacing: 5,
              mainAxisSpacing: 5,
              crossAxisCount: 2,
              childAspectRatio: 160 / 240,
              children: <Widget>[
                CardDeckButton(25, '처음만난사이\n1'),
                CardDeckButton(32, '처음만난사이\n2'),
                CardDeckButton(13, '처음만난사이\n3'),
                CardDeckButton(17, '처음만난사이\n4'),
                CardDeckButton(28, '처음만난사이\n5'),
                CardDeckButton(24, '처음만난사이\n6'),
              ],
            ),
          ),
          Container(
            height: 700,
            child: GridView.count(
              primary: false,
              padding: const EdgeInsets.all(20),
              crossAxisSpacing: 5,
              mainAxisSpacing: 5,
              crossAxisCount: 2,
              childAspectRatio: 160 / 240,
              children: <Widget>[
                CardDeckButton2(25, '처음만난사이\n1'),
                CardDeckButton2(32, '처음만난사이\n2'),
                CardDeckButton2(13, '처음만난사이\n3'),
              ],
            ),
          ),
          Container(
            height: 700,
            child: GridView.count(
              primary: false,
              padding: const EdgeInsets.all(20),
              crossAxisSpacing: 5,
              mainAxisSpacing: 5,
              crossAxisCount: 2,
              childAspectRatio: 160 / 240,
              children: <Widget>[
                CardDeckButton3(25, '처음만난사이\n1'),
                CardDeckButton3(32, '처음만난사이\n2'),
                CardDeckButton3(13, '처음만난사이\n3'),
                CardDeckButton3(17, '처음만난사이\n4'),
              ],
            ),
          ),
          Container(
            height: 700,
            child: GridView.count(
              primary: false,
              padding: const EdgeInsets.all(20),
              crossAxisSpacing: 5,
              mainAxisSpacing: 5,
              crossAxisCount: 2,
              childAspectRatio: 160 / 240,
              children: <Widget>[
                CardDeckButton4(25, '처음만난사이\n1'),
                CardDeckButton4(32, '처음만난사이\n2'),
                CardDeckButton4(13, '처음만난사이\n3'),
                CardDeckButton4(17, '처음만난사이\n4'),
              ],
            ),
          )
        ],
      )),
    );
  }

  Widget CardDeckButton(int cardCount, String cardContent) {
    return Stack(
      children: [
        Container(
          width: 160,
          height: 240,
          child: OutlinedButton(
            style: OutlinedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25),
              ),
              side: BorderSide(width: 0, color: Colors.white),
              backgroundColor: Color(0xffD9D9D9),
            ),
            onPressed: () {},
            child: Stack(
              children: [
                Text(
                  '${cardCount} 장',
                ),
                Container(
                  alignment: Alignment.center,
                  child: Text(
                    'CardDeckButton',
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget CardDeckButton2(int cardCount, String cardContent) {
    return SizedBox(
      width: 160,
      height: 240,
      child: Stack(
        children: [
          Ink.image(
              image: AssetImage('assets/images/g1.png'),
              child: InkWell(
                onTap: () {},
              ),
              fit: BoxFit.fill),
          Padding(
            padding: EdgeInsets.all(25),
            child: Text(
              '25장',
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
            ),
          ),
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.only(left: 10),
            child: Text(
              "test",
              textAlign: TextAlign.center,
              style: TextStyle(
                  height: 150 / 100, fontSize: 24, fontWeight: FontWeight.w700),
            ),
          ),
        ],
      ),
    );
  }

  Widget CardDeckButton3(int cardCount, String cardContent) {
    return SizedBox(
      width: 160,
      height: 240,
      child: Stack(
        children: [
          IconButton(
            onPressed: () {},
            icon: Image.asset('assets/images/card.png'),
            iconSize: 300,
            splashRadius: 50,
          ),
          Text(
            '25장',
            style: TextStyle(
                height: 64.0 / 14.0, fontWeight: FontWeight.w500, fontSize: 14),
          ),
          Container(
            alignment: Alignment.center,
            child: Text(
              "CardDeckButton3",
              style: TextStyle(
                  height: 150 / 100, fontSize: 24, fontWeight: FontWeight.w700),
            ),
          ),
        ],
      ),
    );
  }
}

Widget CardDeckButton4(int cardCount, String cardContent) {
  return Stack(
    children: [
      SizedBox(
        width: 160,
        height: 240,
        child: Stack(
          children: [
            Ink.image(
                image: AssetImage('assets/images/card.png'),
                child: InkWell(
                  onTap: null,
                ),
                fit: BoxFit.fill),
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 10, left: 10),
        child: SizedBox(
          width: 160,
          height: 240,
          child: Stack(
            children: [
              Ink.image(
                  image: AssetImage('assets/images/card.png'),
                  child: InkWell(
                    onTap: () {},
                  ),
                  fit: BoxFit.fill),
              Padding(
                padding: EdgeInsets.all(15),
                child: Text(
                  '25장',
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
                ),
              ),
              Container(
                alignment: Alignment.center,
                child: Text(
                  "test",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      height: 150 / 100,
                      fontSize: 24,
                      fontWeight: FontWeight.w700),
                ),
              ),
            ],
          ),
        ),
      )
    ],
  );
}

Widget TextFieldExample1() {
  return TextField(
    obscureText: false,
    decoration: InputDecoration(
      border: OutlineInputBorder(),
    ),
    textAlign: TextAlign.center,
    minLines: 2,
    maxLines: 3,
    maxLength: 50,
    style: TextStyle(fontSize: 40, fontWeight: FontWeight.w700),
  );
}

Widget CardDeckButton5(int cardCount, String cardContent, String cardName) {
  String cardPath = 'assets/images/${cardName}.png';

  return Stack(
    children: [
      Padding(
        padding: const EdgeInsets.only(top: 15, left: 15),
        child: SizedBox(
          width: 150,
          height: 224,
          child: Stack(
            children: [
              Ink.image(
                  image: AssetImage(cardPath),
                  child: InkWell(
                    onTap: null,
                  ),
                  fit: BoxFit.fill),
            ],
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 10, left: 10),
        child: SizedBox(
          width: 150,
          height: 224,
          child: Stack(
            children: [
              Ink.image(
                  image: AssetImage(cardPath),
                  child: InkWell(
                    onTap: null,
                  ),
                  fit: BoxFit.fill),
            ],
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 5, left: 5),
        child: SizedBox(
          width: 150,
          height: 224,
          child: Stack(
            children: [
              Ink.image(
                  image: AssetImage(cardPath),
                  child: InkWell(
                    onTap: null,
                  ),
                  fit: BoxFit.fill),
            ],
          ),
        ),
      ),
      SizedBox(
        width: 150,
        height: 224,
        child: Stack(
          children: [
            Ink.image(
                image: AssetImage(cardPath),
                child: InkWell(
                  onTap: () {},
                ),
                fit: BoxFit.fill),
            Padding(
              padding: EdgeInsets.all(15),
              child: Text(
                '${cardCount} 장',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
              ),
            ),
            Container(
              alignment: Alignment.center,
              child: Text(
                cardContent,
                textAlign: TextAlign.center,
                style: TextStyle(
                    height: 150 / 100,
                    fontSize: 24,
                    fontWeight: FontWeight.w700),
              ),
            ),
          ],
        ),
      ),
    ],
  );
}
