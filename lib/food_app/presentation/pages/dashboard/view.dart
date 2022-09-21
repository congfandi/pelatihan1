import 'package:flutter/material.dart';
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

    return Container();
  }
}