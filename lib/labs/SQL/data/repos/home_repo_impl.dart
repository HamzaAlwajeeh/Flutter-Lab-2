import 'dart:developer';

import 'package:naghamat/labs/SQL/data/database/sql_db.dart';
import 'package:naghamat/labs/SQL/data/models/contact_model.dart';
import 'package:naghamat/labs/SQL/data/repos/home_repo.dart';

class HomeRepoImpl implements HomeRepo {
  SqlDb db = SqlDb();

  @override
  Future<List<ContactModel>> getAllContacts() async {
    var response = db.readData('SELECT * FROM contacts');

    List<Map<String, dynamic>> data = response as List<Map<String, dynamic>>;
    List<ContactModel> contacts = [];
    for (var contact in data) {
      contacts.add(ContactModel.fromMap(contact));
    }
    return contacts;
  }

  @override
  Future addNewContact(String query) async {
    var response = await db.insertData(sql: query);
    if (response > 0) {
      log('Contact Added Successfully');
    } else {
      log('Error Adding Contact');
    }
  }

  @override
  Future deleteContact(String query) async {
    var response = await db.deleteData(sql: query);
    if (response > 0) {
      log('Contact Deleted Successfully');
    } else {
      log('Error Deleting Contact');
    }
  }

  @override
  Future updateContact(String query) async {
    var response = await db.updateData(sql: query);
    if (response > 0) {
      log('Contact Update Successfully');
    } else {
      log('Error Updating Contact');
    }
  }
}
