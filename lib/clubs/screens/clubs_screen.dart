import 'package:flutter/material.dart';

import '../widgets/club_list.dart';

class ClubScreen extends StatelessWidget {
  const ClubScreen({super.key});


  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: const Text('Clubs'),
      ),
      
      body: const ClubsList(),
      
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          // Open add club modal
        },
      ),
      
    );
  }

}