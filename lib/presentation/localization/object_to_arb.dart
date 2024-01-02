import 'package:allofine/core/error/failure.dart';
import 'package:allofine/presentation/localization/l10n.dart';
import 'package:flutter/material.dart';

//TODO implement it
extension ArbKey on Failure? {
  String? localized(BuildContext context) {
    final l10n = context.l10n;
    switch (this) {
      case Failure.connectivity:
        return l10n.failureConnectivity;
      case Failure.elementNotFound:
        return l10n.failureNotFound;
      case Failure.expiredAuthCode:
        return l10n.failureExpired;
      case Failure.invalidCommand:
        return l10n.failureInvalidCommand;
      case Failure.other:
        return l10n.failureOther;
      case Failure.quotaExeeded:
        return l10n.failureQuotaExeeded;
      case Failure.unauthorized:
        return l10n.failureUnauthorized;
      case null:
        return null;
    }
  }
}
