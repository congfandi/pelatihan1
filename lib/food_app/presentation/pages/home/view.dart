import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pelatihan1/food_app/configs/theme/app_color.dart';
import 'package:pelatihan1/food_app/presentation/pages/cart/view.dart';
import 'package:pelatihan1/food_app/presentation/pages/dashboard/view.dart';
import 'package:pelatihan1/food_app/presentation/pages/profile/view.dart';
import 'package:pelatihan1/food_app/presentation/pages/search/view.dart';
import 'package:pelatihan1/food_app/utils/resources/icons.dart';
import 'package:provider/provider.dart';

import 'provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => HomeProvider(),
      builder: (context, child) => _buildPage(context),
    );
  }

  Widget _buildPage(BuildContext context) {
    final provider = context.read<HomeProvider>();
    final state = provider.state;

    return Scaffold(
      backgroundColor: AppColor.background,
      bottomNavigationBar: Consumer<HomeProvider>(
        builder: (context, provider, child) {
          return BottomNavigationBar(
            currentIndex: state.currentIndex,
            type: BottomNavigationBarType.fixed,
            onTap: (index) => provider.changeIndex(index),
            items: [
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  IC.icHome,
                  color: state.currentIndex == 0
                      ? AppColor.primarySwatch
                      : AppColor.textPrimary,
                ),
                label: "",
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  IC.icCart,
                  color: state.currentIndex == 1
                      ? AppColor.primarySwatch
                      : AppColor.textPrimary,
                ),
                label: "",
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  IC.icSearch,
                  color: state.currentIndex == 2
                      ? AppColor.primarySwatch
                      : AppColor.textPrimary,
                ),
                label: "",
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  IC.icUser,
                  color: state.currentIndex == 3
                      ? AppColor.primarySwatch
                      : AppColor.textPrimary,
                ),
                label: "",
              ),
            ],
          );
        },
      ),
      body: Consumer<HomeProvider>(
        builder: (context, provider, child) {
          final state = provider.state;
          return IndexedStack(
            index: state.currentIndex,
            children: [
              DashboardPage(),
              CartPage(),
              SearchPage(),
              ProfilePage()
            ],
          );
        },
      ),
    );
  }
}
