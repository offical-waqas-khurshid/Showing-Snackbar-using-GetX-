import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Snack Bar GetX',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Snack Bar GetX'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    Get.snackbar(
                      'SnackBar', 'Snack bar message',
                      snackPosition: SnackPosition.BOTTOM,
                      colorText: Colors.white,
                      backgroundColor: Colors.black,
                      borderRadius: 20,
                      margin: const EdgeInsets.all(10),
                      //maxWidth: 100,
                      animationDuration: const Duration(milliseconds: 3000),
                      backgroundGradient: const LinearGradient(
                          colors: [Colors.red, Colors.green]),
                      borderColor: Colors.blue,
                      borderWidth: 3,
                      boxShadows: [
                        const BoxShadow(
                          color: Colors.white30,
                          blurRadius: 8,
                          spreadRadius: 20,
                          offset: Offset(30, 50),
                        )
                      ],
                      forwardAnimationCurve: Curves.bounceInOut,
                      duration: const Duration(milliseconds: 8000),
                      isDismissible: true,
                      icon: const Icon(Icons.accessibility_outlined, color: Colors.white30,),
                      shouldIconPulse: false,
                      leftBarIndicatorColor: Colors.pink,
                      mainButton: TextButton(onPressed: (){}, child:const Text('Retry')),
                      overlayBlur: 5,
                    );
                  },
                  child: const Text('Show Snack')),
            ],
          ),
        ),
      ),
    );
  }
}
