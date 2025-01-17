import 'package:flutter/material.dart';
import 'package:force/forceapp/login/helpers/reponsiveness.dart';
import 'package:force/forceapp/login/constants/controllers.dart';
import 'package:force/forceapp/login/pages/dashboard/widgets/available_drivers_table.dart';
import 'package:force/forceapp/login/pages/dashboard/widgets/overview_cards_large.dart';
// import 'package:force/forceapp/login/pages/dashboard/widgets/overview_cards_medium.dart';
import 'package:force/forceapp/login/pages/dashboard/widgets/overview_cards_small.dart';
import 'package:force/forceapp/login/pages/dashboard/widgets/revenue_section_large.dart';
import 'package:force/forceapp/login/widgets/custom_text.dart';
import 'package:get/get.dart';

import 'widgets/revenue_section_small.dart';

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Obx(
            () => Row(
              children: [
                Container(
                    margin: EdgeInsets.only(
                        top: ResponsiveWidget.isSmallScreen(context) ? 56 : 6),
                    child: CustomText(
                      text: menuController.activeItem.value,
                      size: 24,
                      weight: FontWeight.bold,
                    )),
              ],
            ),
          ),
          Expanded(
              child: ListView(
            children: [
              if (ResponsiveWidget.isLargeScreen(context) ||
                  ResponsiveWidget.isMediumScreen(context))
               // if (ResponsiveWidget.isCustomSize(context))
                  OverviewCardsLargeScreen()
               // else
                //  OverviewCardsMediumScreen()
              else
                OverviewCardsSmallScreen(),
              if (!ResponsiveWidget.isSmallScreen(context))
                RevenueSectionLarge()
              else
                RevenueSectionSmall(),

                AvailableDriversTable(),
             
            ],
          ))
        ],
      ),
    );
  }
}
