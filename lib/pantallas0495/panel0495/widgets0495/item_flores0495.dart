import 'package:flutter/material.dart';

class Itemflores extends StatelessWidget {
  const Itemflores({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(25),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                offset: Offset(0, 5),
                color: Theme.of(context).colorScheme.primary.withOpacity(.1),
                spreadRadius: 5,
                blurRadius: 5)
          ]),
      child: Column(children: [
        CircleAvatar(
          backgroundImage: NetworkImage(
              "https://raw.githubusercontent.com/JazLopezMartinez/Img_FlutterFlow_IOS_6J/main/Act13GridView/ft18.jpg"),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          "Nuestras flores",
          style: Theme.of(context).textTheme.titleSmall,
        ),
        SizedBox(
          height: 5,
        ),
        Row(
          children: List.generate(
              5,
              (index) => Icon(
                    Icons.star,
                    color: Colors.amber,
                    size: 18,
                  )),
        )
      ]),
    );
  }
}
