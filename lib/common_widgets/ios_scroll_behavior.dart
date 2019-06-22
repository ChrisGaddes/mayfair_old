import 'package:flutter/material.dart';

class IosScrollBehavior extends ScrollBehavior {
  /// Chris Gaddes - 6/18/2019 - Loosely based off a Stack Overflow post
  ///
  /// A custom scroll behavior which removes Android overscroll glow
  /// and enables iOS bouncing scroll physics for all platforms
  ///
  /// Example usage:
  ///
  /// @override
  /// Widget build(BuildContext context) {
  ///   return MaterialApp(
  ///     builder: (context, child) {
  ///       return ScrollConfiguration(
  ///         behavior: MyScrollBehavior(),
  ///           child: child,
  ///         );
  ///       },
  ///       home: NavigationScreen(),
  ///     );
  ///   }
  /// }

  @override
  Widget buildViewportChrome(
      BuildContext context, Widget child, AxisDirection axisDirection) {
    // Remove overscroll glow on any platform
    return child;
  }

  @override
  ScrollPhysics getScrollPhysics(BuildContext context) {
    // Use bouncing effect on any platform
    return const BouncingScrollPhysics();
  }
}
