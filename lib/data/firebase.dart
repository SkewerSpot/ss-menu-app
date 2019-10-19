import 'package:firebase_database/firebase_database.dart';

class FirebaseService {
  static final _databaseRef = FirebaseDatabase.instance.reference();

  static Future<int> getNextTokenForDate(String date) async {
    DataSnapshot snapshot =
        await _databaseRef.child('tokens/2019/10/19').once();
    int token = snapshot.value;
    return token;
  }
}
