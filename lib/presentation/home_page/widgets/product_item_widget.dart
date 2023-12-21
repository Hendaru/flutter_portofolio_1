import '../controller/home_controller.dart';
import '../models/product_item_model.dart';
import 'package:flutter/material.dart';
import 'package:hendaru_hery_s_application1/core/app_export.dart';
import 'package:hendaru_hery_s_application1/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class ProductItemWidget extends StatelessWidget {
  ProductItemWidget(
    this.productItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ProductItemModel productItemModelObj;

  var controller = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Obx(
          () => CustomIconButton(
            height: 40.adaptSize,
            width: 40.adaptSize,
            padding: EdgeInsets.all(8.h),
            decoration: IconButtonStyleHelper.fillGray,
            child: CustomImageView(
              imagePath: productItemModelObj.icon!.value,
            ),
          ),
        ),
        Obx(
          () => Text(
            productItemModelObj.text!.value,
            style: CustomTextStyles.bodySmall10,
          ),
        ),
      ],
    );
  }
}
