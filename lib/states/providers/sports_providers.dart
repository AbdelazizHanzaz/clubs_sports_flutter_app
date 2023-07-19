import 'package:flutter/foundation.dart';

import '../../models/club_model.dart';

class ClubProvider extends ChangeNotifier {

  // Clubs list
  List<Club> _clubs = [];

  // Selected filters
  List<String> _selectedSports = [];
  String _selectedLocation = '';

  // Getters
  List<Club> get clubs {
    return _filterClubs();
  }

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

  void updateSelectedSports(List<String> selectedSports) {
    _selectedSports = selectedSports;
    notifyListeners();
  }

  void updateSelectedLocation(String selectedLocation) {
    _selectedLocation = selectedLocation;
    notifyListeners();
  }

}