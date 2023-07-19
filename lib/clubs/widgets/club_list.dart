
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../states/providers/clubs_provider.dart';
import 'club_list_item.dart';
import 'filter_bar.dart';

class ClubsList extends StatelessWidget {
  const ClubsList({super.key});


  @override
  Widget build(BuildContext context) {

    final clubProvider = Provider.of<ClubProvider>(context);

    return Column(
      children: [

        // Filter Bar
        //FilterBar(provider: clubProvider),

        // List of clubs
        Expanded(
          child: Consumer<ClubProvider>(
            builder: (context, provider, child) {
              
              final clubs = provider.clubs;

              return ListView.builder(
                itemCount: clubs.length,
                itemBuilder: (context, index) {
                  final club = clubs[index];
                  
                  return ClubListItem(club: club);
                },
              );

            },
          ),
        ),

      ],
    );

  }

}


