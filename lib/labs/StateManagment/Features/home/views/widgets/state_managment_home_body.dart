import 'package:flutter/widgets.dart';
import 'package:naghamat/labs/StateManagment/Features/home/views/widgets/home_item.dart';

class StateManagmentHomeBody extends StatelessWidget {
  const StateManagmentHomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: BouncingScrollPhysics(),
      itemCount: 10,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          child: RowWidgets(),
        );
      },
    );
  }
}

class RowWidgets extends StatelessWidget {
  const RowWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [HomeItem(), SizedBox(width: 20), HomeItem()],
    );
  }
}
