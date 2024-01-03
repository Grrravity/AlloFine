import 'package:allofine/core/theme/theme.dart';
import 'package:allofine/presentation/app.dart';
import 'package:flutter/material.dart';

class ShowSnackBar {
  static ScaffoldFeatureController<SnackBar, SnackBarClosedReason> showError({
    required String title,
    String? message,
    Duration? duration,
    SnackBarAction? action,
    Color? backgroundColor,
  }) {
    return Toaster.showSnackBar(
      snackBar: Toaster.error(
        title: title,
        message: message,
        action: action,
        duration: duration,
        backgroundColor: backgroundColor,
      ),
    );
  }

  static ScaffoldFeatureController<SnackBar, SnackBarClosedReason> showSuccess({
    required String title,
    String? message,
    Duration? duration,
    SnackBarAction? action,
    Color? backgroundColor,
  }) {
    return Toaster.showSnackBar(
      snackBar: Toaster.success(
        title: title,
        message: message,
        action: action,
        duration: duration,
        backgroundColor: backgroundColor,
      ),
    );
  }

  static ScaffoldFeatureController<SnackBar, SnackBarClosedReason> showSimple({
    required String title,
    String? message,
    Duration? duration,
    SnackBarAction? action,
    Color? backgroundColor,
  }) {
    return Toaster.showSnackBar(
      snackBar: Toaster.simple(
        title: title,
        message: message,
        action: action,
        duration: duration,
        backgroundColor: backgroundColor,
      ),
    );
  }

  static ScaffoldFeatureController<SnackBar, SnackBarClosedReason> showWarning({
    required String title,
    String? message,
    Duration? duration,
    SnackBarAction? action,
    Color? backgroundColor,
  }) {
    return Toaster.showSnackBar(
      snackBar: Toaster.warning(
        title: title,
        message: message,
        action: action,
        duration: duration,
        backgroundColor: backgroundColor,
      ),
    );
  }
}

class Toaster extends SnackBar {
  /// ```
  /// Toast.simple(
  ///   context: context,
  ///   message: 'Ce modèle a bien été ajouté',
  ///   action: SnackBarAction(
  ///     label: 'ACCEDER',
  ///     onPressed: () {
  ///     },
  ///   ),
  /// ),
  /// ```
  factory Toaster.simple({
    required String title,
    String? message,
    Duration? duration,
    SnackBarAction? action,
    Color? backgroundColor,
  }) {
    return Toaster._(
      backgroundColor: backgroundColor ?? Palette.grey900,
      content: IntrinsicHeight(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                color: Color(0xFFFFFFFF),
                fontSize: 14,
                fontWeight: FontWeight.w400,
                fontStyle: FontStyle.normal,
                fontFamily: 'Manrope',
              ),
              maxLines: message != null ? 1 : 2,
              overflow: TextOverflow.ellipsis,
            ),
            if (message != null) const SizedBox(height: 4),
            if (message != null)
              Text(
                message,
                style: const TextStyle(
                  color: Color(0xFFFFFFFF),
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.normal,
                  fontFamily: 'Manrope',
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
          ],
        ),
      ),
      duration: duration ?? const Duration(seconds: 3),
      action: action,
      behavior: SnackBarBehavior.floating,
    );
  }

  factory Toaster.error({
    required String title,
    String? message,
    Duration? duration,
    SnackBarAction? action,
    Color? backgroundColor,
  }) {
    return Toaster._(
      backgroundColor: backgroundColor ?? Palette.grey900,
      content: IntrinsicHeight(
        //height: 55,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Padding(
              padding: EdgeInsets.only(right: 16),
              child: Icon(
                Icons.error,
                size: 26,
                color: Colors.white,
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      color: Color(0xFFFFFFFF),
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                      fontFamily: 'Manrope',
                    ),
                    maxLines: message != null ? 1 : 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  if (message != null) const SizedBox(height: 4),
                  if (message != null)
                    Text(
                      message,
                      style: const TextStyle(
                        color: Color(0xFFFFFFFF),
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,
                        fontFamily: 'Manrope',
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
      duration: duration ?? const Duration(seconds: 3),
      action: action,
      behavior: SnackBarBehavior.floating,
    );
  }

  factory Toaster.warning({
    required String title,
    String? message,
    Duration? duration,
    SnackBarAction? action,
    Color? backgroundColor,
  }) {
    return Toaster._(
      backgroundColor: backgroundColor ?? Palette.grey900,
      content: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
        child: IntrinsicHeight(
          //height: 55,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Padding(
                padding: EdgeInsets.only(right: 16),
                child: Icon(
                  Icons.dangerous,
                  size: 26,
                  color: Colors.white,
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        color: Color(0xFFFFFFFF),
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,
                        fontFamily: 'Manrope',
                      ),
                      maxLines: message != null ? 1 : 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    if (message != null) const SizedBox(height: 4),
                    if (message != null)
                      Text(
                        message,
                        style: const TextStyle(
                          color: Color(0xFFFFFFFF),
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.normal,
                          fontFamily: 'Manrope',
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      duration: duration ?? const Duration(seconds: 3),
      action: action,
      behavior: SnackBarBehavior.floating,
    );
  }

  factory Toaster.success({
    required String title,
    String? message,
    Duration? duration,
    SnackBarAction? action,
    Color? backgroundColor,
  }) {
    return Toaster._(
      backgroundColor: backgroundColor ?? Palette.grey900,
      content: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
        child: IntrinsicHeight(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Padding(
                padding: EdgeInsets.only(right: 16),
                child: Icon(
                  Icons.check,
                  size: 26,
                  color: Colors.white,
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        color: Color(0xFFFFFFFF),
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,
                        fontFamily: 'Manrope',
                      ),
                      maxLines: message != null ? 1 : 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    if (message != null) const SizedBox(height: 4),
                    if (message != null)
                      Text(
                        message,
                        style: const TextStyle(
                          color: Color(0xFFFFFFFF),
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.normal,
                          fontFamily: 'Manrope',
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      duration: duration ?? const Duration(seconds: 3),
      action: action,
      behavior: SnackBarBehavior.floating,
    );
  }

  const Toaster._({
    required super.content,
    required super.duration,
    required Color super.backgroundColor,
    super.action,
    super.behavior,
  });

  /// ```
  /// Toast.showSnackBar(
  ///   context: context,
  ///   snackBar: Toast.simple(
  ///     message: 'Ce modèle a bien été ajouté',
  ///   ),
  /// );
  /// ```
  static ScaffoldFeatureController<SnackBar, SnackBarClosedReason>
      showSnackBar({
    required SnackBar snackBar,
  }) {
    snackbarKey.currentState?.clearSnackBars();
    return snackbarKey.currentState!.showSnackBar(snackBar);
  }
}
