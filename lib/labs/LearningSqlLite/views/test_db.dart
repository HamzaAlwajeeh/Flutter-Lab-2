import 'package:flutter/material.dart';
import 'package:naghamat/core/database/sql_db.dart';

class TestDb extends StatefulWidget {
  const TestDb({super.key});
  static const String routeName = '/test-db';

  @override
  State<TestDb> createState() => _TestDbState();
}

class _TestDbState extends State<TestDb> {
  SqlDb sqlDb = SqlDb();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          spacing: 20,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomButton(
              text: 'Insert',
              backgroundColor: Colors.green,
              onPressed: () async {
                int response = await sqlDb.insertData(
                  "INSERT INTO 'notes' ('title') VALUES ('note 5')",
                );
                print('response : $response');
              },
            ),
            CustomButton(
              text: 'Read',
              backgroundColor: Colors.purple,
              onPressed: () async {
                var response = await sqlDb.readData("SELECT * FROM 'notes'");
                print('response : $response');
              },
            ),
            CustomButton(
              text: 'Update',
              backgroundColor: Colors.blue,
              onPressed: () async {
                int response = await sqlDb.updateData(
                  "UPDATE 'notes' SET 'title' = 'note 1' WHERE id = 1",
                );
                print('response : $response');
              },
            ),
            CustomButton(
              text: 'Delete',
              backgroundColor: Colors.red,
              onPressed: () async {
                int response = await sqlDb.deleteData(
                  "DELETE FROM 'notes' WHERE id = 11",
                );
                print('response : $response');
              },
            ),
          ],
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.text,
    this.onPressed,
    required this.backgroundColor,
  });
  final String text;
  final void Function()? onPressed;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: const Size(200, 56),
        backgroundColor: backgroundColor,
        padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
        textStyle: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      ),
      onPressed: onPressed,
      child: Text(text, style: TextStyle(color: Colors.white)),
    );
  }
}
