

import 'package:flutter/foundation.dart';

import '../../models/club_model.dart';

class ClubProvider extends ChangeNotifier {

  // Clubs list
  List<Club> _clubs = List.generate(10, (index) => Club(id: index.toString(), name: "name $index", location: "location", 
  sports: List.generate(10, (index) => "sports $index")));

  // Selected filters
  List<String> _selectedSports = [];
  String _selectedLocation = '';

  // Getters
  List<Club> get clubs => _filterClubs();
  List<String> get selectedSports  => _selectedSports;
  String get selectedLocation => _selectedLocation;

  // Filter clubs
  List<Club> _filterClubs() {
    return _clubs.where((club) {
      // Filter by selected sports
      if (_selectedSports.isNotEmpty) {
        return club.sports.any((sport) => _selectedSports.contains(sport));
      }
      
      // Filter by location
      if (_selectedLocation.isNotEmpty) {
        return club.location == _selectedLocation; 
      }

      // No filters
      return true;
    }).toList();
  }

  // Club methods

  void loadClubs(List<Club> clubs) {
    _clubs = clubs;
    notifyListeners();
  }

  void addClub(Club club) {
    _clubs.add(club);
    notifyListeners();
  }

  void removeClub(String clubId) {
    _clubs.removeWhere((club) => club.id == clubId);
    notifyListeners();
  }

  // Filter methods

  void updateSelectedSports(String selectedSport) {
    _selectedSports.add(selectedSport);
    notifyListeners();
  }

  void updateSelectedLocation(String selectedLocation) {
    _selectedLocation = selectedLocation;
    notifyListeners();
  }

}