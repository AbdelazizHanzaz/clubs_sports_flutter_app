import 'package:flutter/material.dart';

import '../../states/providers/clubs_provider.dart';

class SportsFilter extends StatelessWidget {

  final ClubProvider provider;

  const SportsFilter({super.key, required this.provider});

  @override 
  Widget build(BuildContext context) {

    final sports = ['Football', 'Tennis', 'Basketball'];

    return ListView(
      scrollDirection: Axis.horizontal,
      children: sports.map((sport) {
        return FilterChip(
          label: Text(sport),
          selected: provider.selectedSports.contains(sport),
          onSelected: (selected) {
            provider.updateSelectedSports(sport);
          },
        );
      }).toList(),
    );

  }

}