import 'package:allofine/core/error/failure.dart';
import 'package:allofine/core/extentions/either_ext.dart';
import 'package:allofine/domain/entities/media_information_detail.dart';
import 'package:allofine/domain/usecase/media_information_usecase.dart';
import 'package:flutter/foundation.dart';

class DetailController with ChangeNotifier {
  DetailController(
    this._mediaInformationUsecase, {
    required this.id,
  });

  final MediaInformationUsecase _mediaInformationUsecase;
  final String id;

  MediaInformationDetail? _media;
  Failure? _failure;
  bool _loading = true;
  MediaInformationDetail? get media => _media;
  Failure? get failure => _failure;
  bool get loading => _loading;

  Future<void> init() async {
    final mediaOrFailure = await _mediaInformationUsecase.getDetail(id);
    if (mediaOrFailure.isLeft()) {
      _failure = mediaOrFailure.getLeft();
    } else {
      _media = mediaOrFailure.getRight();
    }
    _loading = false;
    notifyListeners();
    return;
  }
}
