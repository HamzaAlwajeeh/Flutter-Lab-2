import 'package:flutter/material.dart';
import 'package:naghamat/labs/FutureBuilder/service/api.dart';
import 'package:naghamat/labs/FutureBuilder/view/widgets/profile_card.dart';

class FutureBuilderHomeViewBody extends StatelessWidget {
  const FutureBuilderHomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Api.getUser(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return ProfileCard(user: snapshot.data!);
        } else if (snapshot.hasError) {
          return Center(child: Text('Error: ${snapshot.error}'));
        }
        return const Center(child: CircularProgressIndicator());
      },
    );
  }
}
