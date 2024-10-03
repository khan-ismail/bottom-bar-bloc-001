import 'package:bottom_bar_bloc/src/components/bottom_bar/bloc/bottom_bar_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

class SimpleBottomBar extends StatelessWidget {
  const SimpleBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: BlocBuilder<BottomBarBloc, BottomBarState>(
        builder: (context, state) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (state.currentIndex == 0) ...{
                const Center(child: Text('Home')),
              } else if (state.currentIndex == 1) ...{
                const Center(child: Text('Shop')),
              } else if (state.currentIndex == 2) ...{
                const Center(child: Text('Group')),
              } else if (state.currentIndex == 3) ...{
                const Center(child: Text('Delete')),
              }
            ],
          );
        },
      ),
      bottomNavigationBar: BlocBuilder<BottomBarBloc, BottomBarState>(
        builder: (context, state) {
          return BottomNavigationBar(
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined),
                label: 'Home',
                activeIcon: Icon(Icons.home),
                backgroundColor: Colors.blueGrey,
                tooltip: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.shop_outlined),
                label: 'Shop',
                activeIcon: Icon(Icons.shop_rounded),
                backgroundColor: Colors.blueGrey,
                tooltip: 'Shop',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.group_add_outlined),
                label: 'Group',
                activeIcon: Icon(Icons.group_add_rounded),
                backgroundColor: Colors.blueGrey,
                tooltip: 'Group',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.delete_outlined),
                label: 'Delete',
                activeIcon: Icon(Icons.delete_rounded),
                backgroundColor: Colors.blueGrey,
                tooltip: 'Delete',
              ),
            ],
            currentIndex: state.currentIndex,
            backgroundColor: Colors.white,
            onTap: (index) {
              context
                  .read<BottomBarBloc>()
                  .add(OnChangeBottomBarTabEvent(index));
            },
            elevation: 8,
            enableFeedback: true,
            iconSize: 22,
            selectedItemColor: Colors.amber,
            showUnselectedLabels: true,
            type: BottomNavigationBarType.shifting,
          );
        },
      ),
    );
  }
}
