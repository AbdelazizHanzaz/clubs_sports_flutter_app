import 'package:clubs_sports_app/clubs/widgets/sports_filter.dart';
import 'package:flutter/material.dart';

import '../../states/providers/clubs_provider.dart';
import 'location_filter.dart';

class FilterBar extends StatelessWidget {

  final ClubProvider provider;

  const FilterBar({super.key, required this.provider});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Row(
        children: [
          Expanded(
            child: SportsFilter(provider: provider),
          ),
          Expanded(
            child: LocationFilter(provider: provider),
          )  
        ],
      )
    );
  }

}