import 'package:flutter/material.dart';

import '../../states/providers/clubs_provider.dart';

class LocationFilter extends StatelessWidget {

  final ClubProvider provider;
  
  const LocationFilter({super.key, required this.provider});

  @override
  Widget build(BuildContext context) {

    return DropdownButton<String>(
      value: "London",
      items: const [
        DropdownMenuItem(value: 'London',child: Text('London'),),
        DropdownMenuItem(value: 'Manchester',child: Text('Manchester'),),
      ],
      onChanged: (value) {
        provider.updateSelectedLocation(value!);  
      },
    );

  }

}