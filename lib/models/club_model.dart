// club.dart

class Club {
  final String id;
  final String name;
  final String location;
  final List<String> sports;

  Club({
    required this.id,
    required this.name,
    required this.location,
    required this.sports,
  });


  factory Club.formJson(Map<String, dynamic> data){
    return Club(
      id: data["id"], 
      name: data["name"],  
      location: data["location"], 
      sports: data["sports"],
      
      );
  }

  Map<String, dynamic> toJson(){
     return {
           "id": id,
           "name": name,
           "location": location,
           "sports": sports
     };
  }


}