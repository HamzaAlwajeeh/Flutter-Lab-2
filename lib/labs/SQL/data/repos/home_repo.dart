import 'package:naghamat/labs/SQL/data/models/contact_model.dart';

abstract class HomeRepo {
  Future<List<ContactModel>> getAllContacts();
  Future addNewContact(String query);
  Future updateContact(String query);
  Future deleteContact(String query);
}
