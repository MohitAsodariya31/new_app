import 'dart:typed_data';
import 'dart:ui';

import 'package:flutter/material.dart';

class Buttonscreen extends StatefulWidget {
  const Buttonscreen({Key? key}) : super(key: key);

  @override
  State<Buttonscreen> createState() => _ButtonscreenState();
}

class _ButtonscreenState extends State<Buttonscreen> {
  int a = 0;
  GlobalKey<ScaffoldState> globalKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: globalKey,
      appBar: AppBar(
        backgroundColor: Colors.yellow,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.ice_skating),
      ),
      body: Column(
        children: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.ac_unit),
          ),
          PopupMenuButton(
            itemBuilder: (context) => [
              const PopupMenuItem(
                value: 1,
                child: Icon(Icons.icecream),
              ),
              const PopupMenuItem(
                value: 2,
                child: Text("moradiya"),
              )
            ],
          ),
          InkWell(
            splashColor: Colors.green,
            highlightColor: Colors.blue,
            child: const Icon(Icons.ring_volume, size: 50),
            onTap: () {
              setState(() {
                a += 5;
              });
            },
          ),
          Text(a.toString(), style: const TextStyle(fontSize: 50)),
          // RadioListTile(
          //   title: const Text("male"),
          //   // secondary: Text("femail"),
          //   value: "male",
          //   subtitle: const Text("femail"),
          //   groupValue: "male",
          //   onChanged: (value) {
          //     setState(() {});
          //   },
          // ),
          Radio(
            value: "10",
            groupValue: "5",
            onChanged: (value) {},
          ),
          ElevatedButton(
            onPressed: () {
              return;
            },
            style: ElevatedButton.styleFrom(shape: const StadiumBorder()),
            child: const Text('Button'),
          ),
          TextButton(
            style: TextButton.styleFrom(
              side: const BorderSide(color: Colors.teal, width: 2),
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(25))),
            ),
            onPressed: () {},
            child: const Text('Text Button',
                style: TextStyle(
                    color: Colors.teal,
                    fontSize: 14,
                    fontWeight: FontWeight.w500)),
          ),
          OutlinedButton(
            onPressed: () {},
            child: const Icon(Icons.star_outline),

            // icon: const Icon(Icons.star_outline),
            // label: const Text("Outlined Button"),
          ),
        ],
      ),
    );
  }
}
