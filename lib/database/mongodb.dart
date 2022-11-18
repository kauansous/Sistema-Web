import 'dart:developer';
import 'package:mongo_dart/mongo_dart.dart';
import 'package:residencia_ufc/database/statics.dart';

class MongoDatabase {
  // ignore: prefer_typing_uninitialized_variables
  static var db, userCollection;
  static connect() async {
    db = await Db.create(MONGO_CONN_URL);
    await db.open();
    inspect(db);
    userCollection = db.collection(USER_COLLECTION);
  }
}
