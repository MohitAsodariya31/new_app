import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

class BottomSheetScreen extends StatefulWidget {
  const BottomSheetScreen({Key? key}) : super(key: key);

  @override
  State<BottomSheetScreen> createState() => _BottomSheetScreenState();
}

class _BottomSheetScreenState extends State<BottomSheetScreen> {
  GlobalKey<ScaffoldState> globalKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: globalKey,
      body: SafeArea(
        child: Container(
          alignment: Alignment.center,
          child: Column(
            children: [
              ElevatedButton(
                onPressed: () {
                  showModalBottomSheet(
                    context: context,
                    backgroundColor: Colors.transparent,
                    elevation: 0,
                    barrierColor: Colors.transparent,
                    enableDrag: false,
                    isDismissible: false,
                    builder: (context) => Container(
                      height: 300,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30),
                        ),
                      ),
                    ),
                  );
                },
                child: const Text("Show Model Bottom Sheet"),
              ),
              const SizedBox(height: 50),
              ElevatedButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    // barrierColor: Colors.transparent,
                    // barrierDismissible: false,
                    builder: (context) => CupertinoAlertDialog(
                      title: const Text("App Name"),
                      content: const Text("This is dummy message"),
                      actions: [
                        TextButton(
                          onPressed: () {},
                          child: const Text("Cancel"),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: const Text("Ok"),
                        ),
                      ],
                    ),
                  );
                },
                child: const Text("Show Dialog"),
              ),
              const SizedBox(height: 50),
              ElevatedButton(
                onPressed: () {
                  final snackBar = SnackBar(
                    content: const Text('Yay! A SnackBar!'),
                    // margin: EdgeInsets.all(20),
                    behavior: SnackBarBehavior.fixed,

                    action: SnackBarAction(
                      label: 'Undo',
                      onPressed: () {
                        // Some code to undo the change.
                      },
                    ),
                  );
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                },
                child: const Text("Show Snack bar"),
              ),
              const SizedBox(height: 50),
              Container(
                height: 450.0,
                child: PhotoView.customChild(
                  initialScale: 1.0,
                  tightMode: true,
                  child:
                      Image.network("https://dummyimage.com/300/09f.png/fff."),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
