import 'package:flutter/material.dart';
import 'package:getx_bloc_provider/widgets/bottom_nav_bar.dart';

class StopWatchScreen extends StatelessWidget {
  const StopWatchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "Stop Watch Screen",
          style: Theme.of(context).textTheme.headline1,
        ),
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
