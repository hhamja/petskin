import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:petskin/src/config/constant/app_color.dart';
import 'package:petskin/src/features/product/view/home_page.dart';
import 'package:petskin/src/features/product/view/home_search_page.dart';
import 'package:petskin/src/features/product/view/push_search_page.dart';
import 'package:petskin/src/features/user/view/setting_page.dart';

class TabbarPage extends StatefulWidget {
  const TabbarPage({super.key});

  @override
  State<TabbarPage> createState() => _TabbarPageState();
}

class _TabbarPageState extends State<TabbarPage>
    with SingleTickerProviderStateMixin {
  late TabController controller;

  int tabbarIndex = 0;

  @override
  void initState() {
    super.initState();
    controller =
        TabController(length: 3, vsync: this, animationDuration: Duration.zero);
    controller.addListener(tabListener);
  }

  @override
  void dispose() {
    controller.removeListener(tabListener);
    super.dispose();
  }

  void tabListener() {
    setState(() {
      tabbarIndex = controller.index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        physics: const NeverScrollableScrollPhysics(),
        controller: controller,
        children: const [
          HomePage(),
          HomeSearchPage(),
          SettingPage(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: PRIMARY_COLOR,
        unselectedItemColor: TEXT_COLOR,
        selectedFontSize: 10,
        unselectedFontSize: 10,
        type: BottomNavigationBarType.fixed,
        onTap: (int index) {
          controller.animateTo(index);
        },
        backgroundColor: WHITE_COLOR,
        currentIndex: tabbarIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.house),
            label: '홈',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.search),
            label: '검색',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.gear),
            label: '설정',
          ),
        ],
      ),
    );
  }
}
