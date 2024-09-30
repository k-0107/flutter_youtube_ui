import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Yooutube UI',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Yooutube UI'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 23, 22, 22),
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              "＜  凡才プログラマー",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: Icon(
              Icons.connected_tv,
              color: Colors.white,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: Icon(
              Icons.search,
              color: Colors.white,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: Icon(
              Icons.menu,
              color: Colors.white,
            ),
          ),
        ],
        // centerTitle: false,
      ),
      body: Container(
        color: const Color.fromARGB(255, 23, 22, 22),
        child: Center(
          child: ListView(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: SizedBox(
                  height: 100,
                  width: double.infinity,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset(
                      "assets/images/header.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: SizedBox(
                        width: 80,
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(50),
                            child: Image.asset("assets/images/hiroyuki.jpg"))),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "凡才プログラマー",
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.w900,
                              color: Colors.white),
                        ),
                        Text(
                          "@Hiroyuki",
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          "チャンネル登録者数 2.16万人・650本の動画",
                          style: TextStyle(
                              color: Color.fromARGB(255, 199, 199, 199),
                              fontSize: 12),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              const Padding(
                padding: EdgeInsets.only(right: 16, left: 16, bottom: 15),
                child: Center(
                  child: Text(
                    "ITエンジニアとして、僕のありのままで作っていくことがテーマです。",
                    style: TextStyle(
                        fontSize: 12,
                        color: Color.fromARGB(255, 199, 199, 199)),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "チャンネル登録",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(5),
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                        color: Color.fromARGB(255, 97, 97, 97), width: 2.5),
                  ),
                ),
                height: 50,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(right: 10),
                      child: TextButton(
                          onPressed: () {},
                          child: const Text(
                            "ホーム",
                            style: TextStyle(
                                fontSize: 17,
                                color: Color.fromARGB(255, 201, 200, 200)),
                          )),
                    ),
                    Container(
                      margin: const EdgeInsets.only(right: 10),
                      decoration: const BoxDecoration(
                          border: Border(
                              bottom:
                                  BorderSide(width: 3, color: Colors.white))),
                      child: TextButton(
                          onPressed: () {},
                          child: const Text(
                            "動画",
                            style: TextStyle(
                                fontSize: 17,
                                color: Color.fromARGB(255, 201, 200, 200)),
                          )),
                    ),
                    Container(
                      margin: const EdgeInsets.only(right: 10),
                      child: TextButton(
                          onPressed: () {},
                          child: const Text(
                            "ショート",
                            style: TextStyle(
                                fontSize: 17,
                                color: Color.fromARGB(255, 201, 200, 200)),
                          )),
                    ),
                    Container(
                      margin: const EdgeInsets.only(right: 10),
                      child: TextButton(
                          onPressed: () {},
                          child: const Text(
                            "ライブ",
                            style: TextStyle(
                                fontSize: 17,
                                color: Color.fromARGB(255, 201, 200, 200)),
                          )),
                    ),
                    Container(
                      margin: const EdgeInsets.only(right: 10),
                      child: TextButton(
                          onPressed: () {},
                          child: const Text(
                            "ポッドキャスト",
                            style: TextStyle(
                                fontSize: 17,
                                color: Color.fromARGB(255, 201, 200, 200)),
                          )),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                maximumSize: const Size(110, 70),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10))),
                            child: const Text(
                              "新しい順",
                              style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                maximumSize: const Size(120, 70),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10))),
                            child: const Text(
                              "人気の動画",
                              style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                maximumSize: const Size(90, 70),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10))),
                            child: const Text(
                              "古い順",
                              style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 30, top: 10),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: SizedBox(
                                width: 200,
                                child:
                                    Image.asset("assets/images/sample.jpeg")),
                          ),
                          const Expanded(
                            child: Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "環境と習慣は密接に関わっている",
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                  Text(
                                    "244 回視聴 . 2 日前",
                                    style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 141, 140, 140)),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 30),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: SizedBox(
                              width: 200,
                              child: Image.asset(
                                "assets/images/sample.jpeg",
                              ),
                            ),
                          ),
                          const Expanded(
                            child: Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "flutterの使い方をマスターしよう",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 17,
                                        color: Colors.white),
                                  ),
                                  Text("1444 回視聴 . 5 日前",
                                      style: TextStyle(
                                          color: Color.fromARGB(
                                              255, 141, 140, 140)))
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 30),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: SizedBox(
                              width: 200,
                              child: Image.asset(
                                "assets/images/sample.jpeg",
                              ),
                            ),
                          ),
                          const Expanded(
                            child: Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "【入門編】マネをすることから始めてみよう",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Text("888 回視聴 . 13 日前",
                                      style: TextStyle(
                                          color: Color.fromARGB(
                                              255, 141, 140, 140)))
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 200,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(
                                "assets/images/sample.jpeg",
                              ),
                            ),
                          ),
                          const Expanded(
                            child: Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "【中級編】DBとの連携をしてみよう",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Text("888 回視聴 . 13 日前",
                                      style: TextStyle(
                                          color: Color.fromARGB(
                                              255, 141, 140, 140)))
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 30),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: SizedBox(
                              width: 200,
                              child: Image.asset(
                                "assets/images/sample.jpeg",
                              ),
                            ),
                          ),
                          const Expanded(
                            child: Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "【上級編】ITパスポート合格への道!!",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Text("888 回視聴 . 13 日前",
                                      style: TextStyle(
                                          color: Color.fromARGB(
                                              255, 141, 140, 140)))
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
