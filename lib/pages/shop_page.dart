import 'package:deneme/components/my_dropdown_search.dart';
import 'package:deneme/components/my_line_chart.dart';
import 'package:deneme/components/round_chart.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});
  @override
  Widget build(BuildContext context) {
    TooltipBehavior tooltip = TooltipBehavior(enable: true);
    return Column(
      children: [
        MyDropdownSearch(),
        MyDropdownSearch(),
        MyDropdownSearch(),
        MyDropdownSearch(),
        MyDropdownSearch(),
        MyDropdownSearch(),
      ],
    );
  }
}
