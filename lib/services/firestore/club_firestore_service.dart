

// class ClubService {

//   final FirebaseFirestore _db = FirebaseFirestore.instance;

//   // Create
//   Future<void> addClub(Club club) async {
//     await _db.collection('clubs').add(club.toJson());
//   }

//   // Read
//   Future<List<Club>> getClubs() async {
//     QuerySnapshot snapshot = await _db.collection('clubs').get();
//     return snapshot.docs.map((doc) => Club.fromJson(doc.data())).toList();
//   }

//   // Update
//   Future<void> updateClub(Club club) async {
//     await _db.collection('clubs').doc(club.id).update(club.toJson());
//   }  

//   // Delete
//   Future<void> deleteClub(String clubId) async {
//     await _db.collection('clubs').doc(clubId).delete();
//   }

//   // Additional methods

//   // Get single club
//   Future<Club> getClub(String clubId) async {
//     DocumentSnapshot doc = await _db.collection('clubs').doc(clubId).get();
//     return Club.fromJson(doc.data());
//   }

//   // Filter clubs
//   Future<List<Club>> filterClubs(String sport) async {
//     // Query by sport  
//   } 

// }