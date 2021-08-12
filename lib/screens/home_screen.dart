import 'package:flutter/material.dart';
import 'package:getx_bloc_provider/widgets/bottom_nav_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int screenIndex = 0;

  void setScreenIndex(int index) => setState(() => screenIndex = index);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: screenIndex,
        children: [
          Center(child: Text("First Screen", style: Theme.of(context).textTheme.headline1)),
          Center(child: Text("Second Screen", style: Theme.of(context).textTheme.headline1)),
          Center(child: Text("Third Screen", style: Theme.of(context).textTheme.headline1)),
        ],
      ),
      bottomNavigationBar: BottomNavBar(index: screenIndex, callback: setScreenIndex),
    );
  }
}
