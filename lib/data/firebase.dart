import 'package:firebase_database/firebase_database.dart';
import 'package:ss_menu/util.dart';

class FirebaseService {
  static final _databaseRef = FirebaseDatabase.instance.reference();

  static Future<int> getNextTokenForDate(DateTime date) async {
    DataSnapshot snapshot =
        await _databaseRef.child('tokens/${Util.getYYYYMMDDDate(date)}').once();
    int token = snapshot.value;
    return token;
  }
}
