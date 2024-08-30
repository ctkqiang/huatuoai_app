import 'package:flutter/material.dart';
import 'package:huatuoai_app/constant/menu_const.dart';
import 'package:huatuoai_app/model/menu.dart';

Future<void> main() async {
  runApp(const HuaTuoAI());
}

class HuaTuoAI extends StatefulWidget {
  const HuaTuoAI({super.key});

  @override
  State<HuaTuoAI> createState() => _HuaTuoAIState();
}

class _HuaTuoAIState extends State<HuaTuoAI> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "华佗AI",
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 201, 62, 127),
        ),
        useMaterial3: true,
      ),
      home: const HuaTuoAIMain(title: "华佗AI"),
    );
  }
}

class HuaTuoAIMain extends StatefulWidget {
  const HuaTuoAIMain({super.key, required this.title});

  final String title;

  @override
  State<HuaTuoAIMain> createState() => _HuaTuoAIMainState();
}

class _HuaTuoAIMainState extends State<HuaTuoAIMain> {
  @override
  Widget build(BuildContext context) {
    Map<String, String> mainMenuIcon = {
      "中药": "assets/images/herb.png",
      "方剂": "assets/images/prescription.png",
      "舌诊": "assets/images/logo.png",
      "经络": "assets/images/logo.png",
      "病症": "assets/images/logo.png",
      "成药": "assets/images/logo.png",
    };

    List mainMenu = [
      imageButton(
        id: 0,
        title: "中药",
        image: mainMenuIcon["中药"],
      ),
      imageButton(
        id: 1,
        title: "方剂",
        image: mainMenuIcon["方剂"],
      ),
      imageButton(
        id: 2,
        title: "舌诊",
        image: mainMenuIcon["舌诊"],
      ),
      imageButton(
        id: 3,
        title: "经络",
        image: mainMenuIcon["经络"],
      ),
      imageButton(
        id: 4,
        title: "病症",
        image: mainMenuIcon["病症"],
      ),
      imageButton(
        id: 5,
        title: "成药",
        image: mainMenuIcon["成药"],
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          // const Text("海报"),

          /// Grid View
          SizedBox(
            height: 500,
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 10.0,
                childAspectRatio: 2,
              ),
              itemCount: mainMenu.length,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    print(index);
                  },
                  child: mainMenu[index],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
