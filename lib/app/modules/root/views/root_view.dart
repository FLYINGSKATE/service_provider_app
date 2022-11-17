import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import '../../global_widgets/custom_bottom_nav_bar.dart';
import '../../global_widgets/main_drawer_widget.dart';
import '../controllers/root_controller.dart';

class RootView extends GetView<RootController> {

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Scaffold(
        drawer: MainDrawerWidget(),
        body: controller.currentPage,
        bottomNavigationBar: BottomNavigationBar(
            items:  <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                  icon: Icon(Icons.home_outlined),
                  label: "Home".tr,
                  backgroundColor: context.theme.scaffoldBackgroundColor,
              ),
              BottomNavigationBarItem(
                  icon: FaIcon(FontAwesomeIcons.calendar),
                  label: "Diary".tr,
                  backgroundColor: context.theme.scaffoldBackgroundColor,
              ),
              BottomNavigationBarItem(
                icon: FaIcon(FontAwesomeIcons.scaleBalanced),
                label: "Buy/Sell".tr,
                backgroundColor: context.theme.scaffoldBackgroundColor,
              ),
              BottomNavigationBarItem(
                icon: FaIcon(FontAwesomeIcons.film),
                label: "Videos".tr,
                backgroundColor: context.theme.scaffoldBackgroundColor,
              ),
              BottomNavigationBarItem(
                icon: FaIcon(FontAwesomeIcons.globe),
                label: "News".tr,
                backgroundColor: context.theme.scaffoldBackgroundColor,
              ),
            ],
            type: BottomNavigationBarType.fixed,
            currentIndex: controller.currentIndex.value,
            selectedItemColor: Color(0xffE87E02),
            iconSize: 24,
            onTap: _onItemTapped,
            unselectedItemColor: Colors.black,
            elevation: 5
        ),
      );
      /*bottomNavigationBar: CustomBottomNavigationBar(
          backgroundColor: context.theme.scaffoldBackgroundColor,
          itemColor: context.theme.colorScheme.secondary,
          currentIndex: controller.currentIndex.value,
          onChange: (index) {
            controller.changePage(index);
          },
          children: [
            CustomBottomNavigationItem(
              icon: Icons.home_outlined,
              label: "Home".tr,
            ),
            CustomBottomNavigationItem(
              icon: Icons.assignment_outlined,
              label: "Bookings".tr,
            ),
            CustomBottomNavigationItem(
              icon: Icons.chat_outlined,
              label: "Chats".tr,
            ),
            CustomBottomNavigationItem(
              icon: Icons.person_outline,
              label: "Account".tr,
            ),
          ],
        ),
      );*/
    });
  }

  void _onItemTapped(int index) {
    controller.changePage(index);
  }
}
