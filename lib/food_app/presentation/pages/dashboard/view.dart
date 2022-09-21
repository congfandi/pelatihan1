import 'package:flutter/material.dart';
import 'package:pelatihan1/food_app/presentation/pages/dashboard/header.dart';
import 'package:pelatihan1/food_app/presentation/pages/dashboard/menu_dashboard.dart';
import 'package:pelatihan1/food_app/presentation/pages/dashboard/title_dashboard.dart';
import 'package:pelatihan1/food_app/presentation/pages/dashboard/todays_promo.dart';
import 'package:provider/provider.dart';

import 'provider.dart';

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => DashboardProvider(),
      builder: (context, child) => _buildPage(context),
    );
  }

  Widget _buildPage(BuildContext context) {
    final provider = context.read<DashboardProvider>();
    final state = provider.state;

    return Column(
      children: [
        SizedBox(
          height: 54,
        ),
        HeaderDashboard(),
        SizedBox(
          height: 24,
        ),
        TitleDashboard(),
        SizedBox(
          height: 24,
        ),
        MenuDashboard(),
        TodaysPromo(),
      ],
    );
  }
}
