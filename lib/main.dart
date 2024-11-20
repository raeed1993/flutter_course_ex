import 'package:example_project/statemanagement/change_notifier.dart';
import 'package:flutter/material.dart';
import 'UI/animation/implicit/animated_align_widget.dart';
import 'UI/animation/implicit/animated_container.dart';
import 'UI/animation/implicit/animated_opacity.dart';
import 'UI/animation/implicit/animated_text.dart';
import 'UI/animation/implicit/tween_animation_builder.dart';
import 'UI/animation/implicit/tween_animation_widget.dart';
import 'UI/appbar_sliver/app_bar_screen.dart';
import 'UI/appbar_sliver/appbar_package.dart';
import 'UI/bottom_navigation/bottom_navigation_bar.dart';
import 'UI/bottom_navigation/package_bottom_navigation_bar.dart';
import 'UI/dialog/dialog_package.dart';
import 'UI/directional/directional_screen.dart';
import 'UI/drawer/drawer_package.dart';
import 'UI/drawer/drawer_screen.dart';
import 'UI/fab.dart';
import 'UI/indicator/indicator_package.dart';
import 'UI/indicator/liquid_indicator.dart';
import 'UI/page_view/page_view_screen.dart';
import 'UI/indicator/progress_indecator.dart';
import 'UI/indicator/refresh_indicator.dart';
import 'UI/speed_dial_package.dart';
import 'UI/splash_screen.dart';
import 'UI/tab_bar/tab_bar_screen.dart';
import 'statemanagement/counter_app.dart';
import 'statemanagement/value_notifier.dart';


void main() {

  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: CounterScreen());
  }
}
