import 'package:flutter/material.dart';
import 'package:organic_market_app/domain/models/product.dart';
import 'package:organic_market_app/utils/app_colors.dart';
import 'package:toggle_switch/toggle_switch.dart';

class CustomToggleSwitch extends StatefulWidget {
  const CustomToggleSwitch({super.key, required this.product});

  final Product product;

  @override
  State<CustomToggleSwitch> createState() => _CustomToggleSwitchState();
}

class _CustomToggleSwitchState extends State<CustomToggleSwitch> {
  List<bool> isSelected = [true, false, false];

  @override
  Widget build(BuildContext context) {
    return ToggleSwitch(
      minWidth: 343,
      cornerRadius: 20.0,
      activeBgColors: const [
        [AppColors.white],
        [AppColors.white],
        [AppColors.white],
      ],
      activeFgColor: AppColors.black,
      inactiveBgColor: AppColors.toggleBackground,
      inactiveFgColor: AppColors.black,
      initialLabelIndex: 1,
      totalSwitches: 3,
      labels: [
        '${widget.product.weight[0]} -${widget.product.discount[0]}%',
        '${widget.product.weight[1]} -${widget.product.discount[1]}%',
        '${widget.product.weight[2]} -${widget.product.discount[2]}%',
      ],
      radiusStyle: true,
    );
  }
}
