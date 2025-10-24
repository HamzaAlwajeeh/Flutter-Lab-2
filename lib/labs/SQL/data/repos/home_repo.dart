import 'package:naghamat/labs/SQL/data/models/contact_model.dart';

abstract class HomeRepo {
  Future<List<ContactModel>> getAllContacts();
  Future addNewContact({required String query});
  Future updateContact({required String query});
  Future deleteContact({required String query});
}
