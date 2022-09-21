import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pelatihan1/food_app/utils/resources/icons.dart';

class MenuDashboard extends StatelessWidget {
  MenuDashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: List.generate(4, (index) => _item(context, index)),
      ),
    );
  }

  final List<Menu> menus = [
    Menu(
      name: "Cheap",
      icon: IC.icFavorite,
    ),
    Menu(
      name: "Cheap",
      icon: IC.icTag,
    ),
    Menu(
      name: "Cheap",
      icon: IC.icTranding,
    ),
    Menu(
      name: "Cheap",
      icon: IC.icFavorite,
    ),
  ];

  Widget _item(BuildContext context, int index) {
    return Container(
      width: (MediaQuery.of(context).size.width / 4) - 16,
      height: 100,
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.circular(10),
      ),
      child: SvgPicture.asset(menus[index].icon ?? ""),
    );
  }
}

class Menu {
  String? name;
  String? icon;
  Menu({this.name, this.icon});
}
