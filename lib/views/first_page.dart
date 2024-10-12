import 'package:flutter/material.dart';
import 'package:news_app/views/home_view.dart';

class CoverPage extends StatelessWidget {
  const CoverPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(103, 134, 206, 1),
      body: Column(
        children: [
          const Image(
            image: AssetImage('assets/news_image.png'),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const HomeView();
              }));
            },
            child: const Text('Click here'),
          ),
        ],
      ),
    );
  }
}
