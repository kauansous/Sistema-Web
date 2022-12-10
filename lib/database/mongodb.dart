// ignore_for_file: unused_local_variable, prefer_const_constructors, avoid_print

import 'package:mongo_dart/mongo_dart.dart';
import 'package:residencias_ufc/database/statics.dart';

class MongoDatabase {
  // ignore: prefer_typing_uninitialized_variables
  static var db, userCollection;
  static connect() async {
    db = await Db.create(MONGO_CONN_URL);
    await db.open();
    userCollection = db.collection(USER_COLLECTION);
    print('Database opened');
  }
}