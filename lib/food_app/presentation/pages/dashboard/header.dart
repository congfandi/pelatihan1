import 'package:flutter/material.dart';
import 'package:pelatihan1/food_app/configs/theme/app_color.dart';
import 'package:pelatihan1/food_app/configs/theme/app_font.dart';

class HeaderDashboard extends StatelessWidget {
  const HeaderDashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [_pinLocation(), _lonceng()],
      ),
    );
  }

  Widget _pinLocation() {
    return Container(
      height: 36,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(34),
        color: Color(0x1AE84C4F),
      ),
      child: Padding(
        padding: EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 8),
        child: Row(
          children: [
            Text(
              "Jl . Jayakatwang no 301",
              style: AppFont.normalRegular.copyWith(
                color: AppColor.textSecondary,
              ),
            ),
            Icon(
              Icons.arrow_drop_down,
              color: AppColor.brandPrimary,
            ),
          ],
        ),
      ),
    );
  }

  Widget _lonceng() {
    return CircleAvatar(
      backgroundColor: AppColor.brandPrimary,
      maxRadius: 18,
      child: Icon(
        Icons.notifications,
        color: Colors.white,
      ),
    );
  }
}
