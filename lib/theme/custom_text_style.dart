import 'package:flutter/material.dart';
import 'package:mohammod_shawon_ali_s_application1/core/utils/size_utils.dart';
import 'package:mohammod_shawon_ali_s_application1/theme/theme_helper.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyMedium15 => theme.textTheme.bodyMedium!.copyWith(
        fontSize: 15.fSize,
      );
  static get bodyMediumBlue100 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blue100,
      );
  static get bodySmallBlueA200 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueA200,
      );
  static get bodySmallOrange300 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.orange300,
      );
  static get bodySmallPrimaryContainer => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.primaryContainer.withOpacity(1),
      );
  // Title text style
  static get titleMediumBlueA200 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueA200,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumPrimaryContainer =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primaryContainer.withOpacity(1),
      );
  static get titleMediumSemiBold => theme.textTheme.titleMedium!.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get titleSmallNunitoPrimary =>
      theme.textTheme.titleSmall!.nunito.copyWith(
        color: theme.colorScheme.primary.withOpacity(1),
        fontWeight: FontWeight.w700,
      );
}

extension on TextStyle {
  TextStyle get nunito {
    return copyWith(
      fontFamily: 'Nunito',
    );
  }

  TextStyle get poppins {
    return copyWith(
      fontFamily: 'Poppins',
    );
  }
}
