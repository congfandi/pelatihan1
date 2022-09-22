import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pelatihan1/food_app/configs/theme/app_color.dart';
import 'package:pelatihan1/food_app/configs/theme/app_font.dart';
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
      name: "Favorite",
      icon: IC.icFavorite,
    ),
    Menu(
      name: "Cheap",
      icon: IC.icTag,
    ),
    Menu(
      name: "Trend",
      icon: IC.icTranding,
    ),
    Menu(
      name: "More",
      icon: IC.icFavorite,
    ),
  ];

  Widget _item(BuildContext context, int index) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: (MediaQuery.of(context).size.width / 4) - 16,
          height: (MediaQuery.of(context).size.width / 4) - 16,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: AppColor.white
          ),
          padding: const EdgeInsets.all(21),
          child: SvgPicture.asset(menus[index].icon ?? ""),
        ),
        const SizedBox(height: 10),
        Text(
          menus[index].name ?? "",
          style: AppFont.smallMedium.copyWith(
            color: AppColor.textSecondary,
          ),
        ),
      ],
    );
  }
}

class Menu {
  String? name;
  String? icon;

  Menu({this.name, this.icon});
}
