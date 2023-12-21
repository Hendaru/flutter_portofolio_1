import '../home_page/widgets/product_item_widget.dart';
import 'controller/home_controller.dart';
import 'models/home_model.dart';
import 'models/product_item_model.dart';
import 'package:flutter/material.dart';
import 'package:hendaru_hery_s_application1/core/app_export.dart';
import 'package:hendaru_hery_s_application1/widgets/app_bar/appbar_leading_image.dart';
import 'package:hendaru_hery_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:hendaru_hery_s_application1/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:hendaru_hery_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:hendaru_hery_s_application1/widgets/custom_elevated_button.dart';
import 'package:hendaru_hery_s_application1/widgets/custom_search_view.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key})
      : super(
          key: key,
        );

  HomeController controller = Get.put(HomeController(HomeModel().obs));

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillOnPrimary,
          child: Column(
            children: [
              _buildMainContent(),
              _buildProductSection(),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildMainContent() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 21.v),
      decoration: AppDecoration.fillPrimary,
      child: Column(
        children: [
          CustomAppBar(
            height: 32.v,
            leadingWidth: 31.h,
            leading: AppbarLeadingImage(
              imagePath: ImageConstant.imgLogoOnprimary,
              margin: EdgeInsets.only(
                left: 16.h,
                top: 7.v,
                bottom: 7.v,
              ),
            ),
            title: AppbarTitle(
              text: "lbl_halo_maju_jaya".tr,
              margin: EdgeInsets.only(left: 8.h),
            ),
            actions: [
              AppbarTrailingIconbutton(
                imagePath: ImageConstant.imgIconPrimary,
                margin: EdgeInsets.symmetric(horizontal: 16.h),
              ),
            ],
          ),
          SizedBox(height: 37.v),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 16.h),
            padding: EdgeInsets.all(16.h),
            decoration: AppDecoration.fillLightBlue.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder16,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgIconOnprimary,
                      height: 24.adaptSize,
                      width: 24.adaptSize,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 4.h,
                        top: 3.v,
                        bottom: 3.v,
                      ),
                      child: Text(
                        "lbl_saldo".tr,
                        style: CustomTextStyles.bodyMediumOnPrimary,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 4.v),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 1.v),
                      child: Text(
                        "lbl_rp_352_000".tr,
                        style: CustomTextStyles.titleLargeOnPrimary,
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgArrowRight,
                      height: 24.adaptSize,
                      width: 24.adaptSize,
                      margin: EdgeInsets.only(
                        left: 4.h,
                        bottom: 2.v,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 6.v),
                Row(
                  children: [
                    Text(
                      "msg_keuntungan_hari".tr,
                      style: CustomTextStyles.bodySmallOnPrimary,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 5.h),
                      child: Text(
                        "lbl_rp_132_000".tr,
                        style: CustomTextStyles.labelLargeOnPrimary,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 18.v),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 6.v),
                  decoration: AppDecoration.outlineBlack.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder16,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          top: 2.v,
                          bottom: 5.v,
                        ),
                        child: Column(
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgIconPrimary32x32,
                              height: 32.adaptSize,
                              width: 32.adaptSize,
                            ),
                            SizedBox(height: 7.v),
                            Text(
                              "lbl_isi_saldo".tr,
                              style: CustomTextStyles.bodySmall10,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          top: 2.v,
                          bottom: 5.v,
                        ),
                        child: Column(
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgIcon32x32,
                              height: 32.adaptSize,
                              width: 32.adaptSize,
                            ),
                            SizedBox(height: 7.v),
                            Text(
                              "lbl_tarik_saldo".tr,
                              style: CustomTextStyles.bodySmall10,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 5.v),
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment.centerRight,
                              child: SizedBox(
                                height: 34.v,
                                width: 38.h,
                                child: Stack(
                                  alignment: Alignment.topRight,
                                  children: [
                                    CustomImageView(
                                      imagePath: ImageConstant.imgIcon1,
                                      height: 32.adaptSize,
                                      width: 32.adaptSize,
                                      alignment: Alignment.bottomLeft,
                                    ),
                                    Align(
                                      alignment: Alignment.topRight,
                                      child: Container(
                                        width: 16.adaptSize,
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 4.h,
                                          vertical: 1.v,
                                        ),
                                        decoration:
                                            AppDecoration.fillOrange.copyWith(
                                          borderRadius:
                                              BorderRadiusStyle.roundedBorder8,
                                        ),
                                        child: Text(
                                          "lbl_2".tr,
                                          style: theme.textTheme.labelMedium,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 7.v),
                            Text(
                              "lbl_transaksi".tr,
                              style: CustomTextStyles.bodySmall10,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 14.v),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildProductSection() {
    return Container(
      padding: EdgeInsets.all(16.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadiusStyle.customBorderTL16,
      ),
      child: Column(
        children: [
          SizedBox(
            width: 60.h,
            child: Divider(
              color: appTheme.gray400,
            ),
          ),
          SizedBox(height: 28.v),
          CustomSearchView(
            controller: controller.searchController,
            hintText: "msg_cari_pulsa_listrik".tr,
          ),
          SizedBox(height: 16.v),
          Padding(
            padding: EdgeInsets.only(left: 7.h),
            child: Obx(
              () => GridView.builder(
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisExtent: 53.v,
                  crossAxisCount: 4,
                  mainAxisSpacing: 40.h,
                  crossAxisSpacing: 40.h,
                ),
                physics: NeverScrollableScrollPhysics(),
                itemCount:
                    controller.homeModelObj.value.productItemList.value.length,
                itemBuilder: (context, index) {
                  ProductItemModel model = controller
                      .homeModelObj.value.productItemList.value[index];
                  return ProductItemWidget(
                    model,
                  );
                },
              ),
            ),
          ),
          SizedBox(height: 14.v),
          CustomElevatedButton(
            height: 20.v,
            width: 91.h,
            text: "lbl_lihat_semua".tr,
            buttonStyle: CustomButtonStyles.fillGrayTL10,
            buttonTextStyle: CustomTextStyles.bodySmallPrimary,
          ),
          SizedBox(height: 5.v),
        ],
      ),
    );
  }
}
