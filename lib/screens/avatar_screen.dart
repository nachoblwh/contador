import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
  const AvatarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stan lee'),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 5),
            child: CircleAvatar(
              backgroundColor: Colors.indigo[900],
              child: const Text('SL'),
            ),
          )
        ],
      ),
      body: Center(
        child: CircleAvatar(
            maxRadius: 110,
            backgroundImage: NetworkImage(
              FadeInImage(
                image: , 
                placeholder: const AssetImage('assets/jar-loading.gif'),)
            )
        );

        
    
  }
}
