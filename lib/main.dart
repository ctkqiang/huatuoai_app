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
      "中药": "",
      "方剂": "",
      "舌诊": "",
      "经络": "",
      "病症": "",
      "成药": "",
    };

    List mainMenu = [
      Menu(
        id: 0,
        title: "中药",
        icon: mainMenuIcon["中药"],
        description: "",
      ),
      Menu(
        id: 1,
        title: "方剂",
        icon: mainMenuIcon["方剂"],
        description: "",
      ),
      Menu(
        id: 2,
        title: "舌诊",
        icon: mainMenuIcon["舌诊"],
        description: "",
      ),
      Menu(
        id: 3,
        title: "经络",
        icon: mainMenuIcon["经络"],
        description: "",
      ),
      Menu(
        id: 4,
        title: "病症",
        icon: mainMenuIcon["病症"],
        description: "",
      ),
      Menu(
        id: 5,
        title: "成药",
        icon: mainMenuIcon["成药"],
        description: "",
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          const Text("海报"),

          /// Grid View
          SizedBox(
            height: 360,
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 10.0,
                childAspectRatio: 2,
              ),
              itemCount: mainMenu.length,
              itemBuilder: (context, index) {
                Menu menu = mainMenu[index];

                print(menu.title);

                return InkWell(
                  onTap: () {
                    print(index);
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 10),
                      Text(menu.title!),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
