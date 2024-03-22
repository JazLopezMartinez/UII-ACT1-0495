import 'package:flutter/material.dart';
import 'package:lopez_uii_act1_0495/pantallas0495/panel0495/widgets0495/item_flores0495.dart';

class PanelPantalla0495 extends StatelessWidget {
  const PanelPantalla0495({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff5ea993),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.menu, color: Colors.white),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 25),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://raw.githubusercontent.com/JazLopezMartinez/Img_FlutterFlow_IOS_6J/main/Act12NavBar/WitchyFloShop.jpg"),
            ),
          ),
        ],
        title: const Text('Panel Lopez 0495',
            style: TextStyle(color: Colors.white)),
      ),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Container(
            margin: const EdgeInsets.all(15),
            padding: const EdgeInsets.symmetric(horizontal: 15),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: const Color(0xffc8ffd2),
                boxShadow: [
                  BoxShadow(
                      offset: const Offset(0, 5),
                      color:
                          Theme.of(context).colorScheme.primary.withOpacity(.1),
                      spreadRadius: 5,
                      blurRadius: 5)
                ]),
            child: const TextField(
              decoration: InputDecoration(
                  hintText: "¿Que buscaras?",
                  hintStyle: TextStyle(fontWeight: FontWeight.w300),
                  border: InputBorder.none,
                  prefixIcon: Icon(
                    Icons.search,
                    color: Color(0xa51b361f),
                  )),
            ),
          ),
          Container(
            height: 180,
            margin: const EdgeInsets.all(15),
            decoration: const BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        "https://raw.githubusercontent.com/JazLopezMartinez/Img_FlutterFlow_IOS_6J/main/Act12NavBar/WitchyFloShop.jpg"))),
          ),
          ListTile(
            title: Text("Top Flores"),
            titleTextStyle: Theme.of(context).textTheme.titleLarge,
            trailing: Icon(Icons.filter_list_outlined),
          ),
          Expanded(
            child: GridView.count(
              padding: EdgeInsets.all(25),
              crossAxisCount: 2,
              mainAxisSpacing: 20,
              crossAxisSpacing: 15,
              children: [for (int i = 1; i <= 10; i++) const Itemflores()],
            ),
          )
        ],
      ),
    );
  }
}
