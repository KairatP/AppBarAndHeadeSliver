import 'package:flutter/material.dart';
import 'package:sliver/my_assets/colors.dart';
import 'package:sliver/view/header_sliver_a_page.dart';
import 'package:sliver/view/header_sliver_d_page.dart';
import 'package:sliver/view/header_sliver_e_page.dart';
import 'package:sliver/view/header_sliver_b_page.dart';
import 'package:sliver/view/header_sliver_c_page.dart';

class MyTabBar extends StatefulWidget {
  const MyTabBar({Key? key}) : super(key: key);

  @override
  State<MyTabBar> createState() => _TabBarState();
}

class _TabBarState extends State<MyTabBar> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Builder(
            builder: (context) {
              switch (selectedIndex) {
                case 0:
                  return const HeaderSliverFirstPage();
                case 1:
                  return const HeaderSliverSecondPage();
                case 2:
                  return const HeaderSliverThirdPage();
                case 3:
                  return const HeaderSliverFourthPage();
                case 4:
                  return const HeaderSliverFivesPage();
                default:
                  return const Center(
                      child: Text(
                          'Something has been went wrong, please contact with admin'));
              }
              // return Container();
            },
          ),
        ],
      ),
      bottomNavigationBar: SizedBox(
        height: 90,
        child: NavigationBar(
          backgroundColor: AppColors.mainColor,
          onDestinationSelected: (int index) {
            setState(() {
              selectedIndex = index;
            });
          },
          indicatorColor: Colors.transparent,
          selectedIndex: selectedIndex,
          destinations: const <Widget>[
            NavigationDestination(
              selectedIcon: Icon(
                Icons.account_circle,
                color: AppColors.whiteColor,
                size: 30.0,
              ),
              icon: Icon(
                Icons.account_circle,
                color: AppColors.greyColor,
                size: 30.0,
              ),
              label: 'Home',
            ),
            NavigationDestination(
              selectedIcon: Icon(
                Icons.account_circle,
                color: AppColors.whiteColor,
                size: 30.0,
              ),
              icon: Icon(
                Icons.account_circle,
                color: AppColors.greyColor,
                size: 30.0,
              ),
              label: 'Second',
            ),
            NavigationDestination(
              selectedIcon: Icon(
                Icons.account_circle,
                color: AppColors.whiteColor,
                size: 30.0,
              ),
              icon: Icon(
                Icons.account_circle,
                color: AppColors.greyColor,
                size: 30.0,
              ),
              label: 'Third',
            ),
            NavigationDestination(
              selectedIcon: Icon(
                Icons.account_circle,
                color: AppColors.whiteColor,
                size: 30.0,
              ),
              icon: Icon(
                Icons.account_circle,
                color: AppColors.greyColor,
                size: 30.0,
              ),
              label: 'Fourth',
            ),
            NavigationDestination(
              selectedIcon: Icon(
                Icons.account_circle,
                color: AppColors.whiteColor,
                size: 30.0,
              ),
              icon: Icon(
                Icons.account_circle,
                color: AppColors.greyColor,
                size: 30.0,
              ),
              label: 'Fiveth',
            ),
          ],
        ),
      ),
    );
  }
}
