import 'package:flutter/material.dart';

///
class RangedSlider extends StatelessWidget {
  ///Range Slider widget for strokeWidth
  const RangedSlider({Key? key, this.value, this.onChanged}) : super(key: key);

  ///Default value of strokewidth.
  final double? value;

  /// Callback for value change.
  final ValueChanged<double>? onChanged;

  @override
  Widget build(BuildContext context) {
    return Slider.adaptive(
      max: 20,
      min: 1,
      divisions: 19,
      value: value!,
      onChanged: onChanged,
      activeColor: Theme.of(context).primaryColor,
      label: "${value!.toInt()}",
    );
  }
}
