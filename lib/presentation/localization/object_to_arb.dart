import 'package:allofine/core/error/failure.dart';
import 'package:allofine/domain/entities/media_type.dart';
import 'package:allofine/presentation/localization/l10n.dart';
import 'package:flutter/material.dart';

extension OnFailureLocalisation on Failure {
  String localized(BuildContext context) {
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
    }
  }
}

extension OnMediaTypeLocalisation on MediaType {
  String localized(BuildContext context) {
    final l10n = context.l10n;
    return map(
      series: (_) => l10n.mediaTypeSeries,
      movie: (_) => l10n.mediaTypeMovie,
      other: (other) => other.label,
    );
  }
}
