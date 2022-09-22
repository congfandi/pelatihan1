import 'package:flutter/material.dart';
import 'package:pelatihan1/food_app/configs/theme/app_color.dart';
import 'package:pelatihan1/food_app/configs/theme/app_font.dart';

class TodaysPromo extends StatelessWidget {
  const TodaysPromo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Today's Promo",
                style: AppFont.h2,
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  "See all",
                  style: AppFont.smallRegular
                      .copyWith(color: AppColor.brandPrimary),
                ),
              )
            ],
          ),
        ),
        const SizedBox(height: 16),
        SizedBox(
          height: 200,
          child: ListView.builder(
            itemBuilder: (c, i) => i % 2 == 0
                ? const SizedBox(
                    width: 15,
                  )
                : _item(),
            itemCount: 20,
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
          ),
        )
      ],
    );
  }

  Widget _item() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: SizedBox(
        width: 300,
        height: 400,
        child: Stack(
          children: [
            Image.asset(
              "assets/images/food.png",
              fit: BoxFit.cover,
              width: 300,
              height: 400,
            ),
            Positioned(
              bottom: 16,
              right: 16,
              left: 16,
              child: Container(
                decoration: BoxDecoration(
                    color: AppColor.white,
                    borderRadius: BorderRadius.circular(8)),
                padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 4),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Fruid Salad Mix",
                      style: AppFont.normalMedium,
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Text(
                      "Delics Fruit salad, Ngasem",
                      style: AppFont.verySmallRegular
                          .copyWith(color: AppColor.textSecondary),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Row(
                      children: [
                        const Text("18.500"),
                        const SizedBox(width: 8,),
                        const Text("18.500"),
                        const Expanded(child: SizedBox()),
                        ElevatedButton(
                          onPressed: null,
                          style: ElevatedButton.styleFrom(
                              disabledBackgroundColor: AppColor.brandSecondary,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8))),
                          child: Text(
                            "5 left",
                            style: AppFont.verySmallRegular
                                .copyWith(color: AppColor.white),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
