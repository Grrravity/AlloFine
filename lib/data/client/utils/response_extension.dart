import 'package:allofine/core/error/failure.dart';
import 'package:allofine/data/client/utils/json_typedef.dart';
import 'package:dio/dio.dart';

extension ResponseExtension on Response<dynamic> {
  dynamic get _data {
    if (data == null || (data is! Map && data is! List)) {
      throw Exception('Response body is null or invalid');
    }
    return data;
  }

  Json get item {
    return _data as Json;
  }

  JsonList get collection {
    return (data as List<dynamic>).map((e) => e as Json).toList();
  }

  String? get error {
    if (statusCode != null && statusCode! >= 200 && statusCode! < 300) {
      return null;
    }

    return (data as JsonList?)?.first['message'] as String? ??
        'Unknown failure';
  }

  Failure? handleFailure() {
    if ((item['Response'] as String? ?? 'False') == 'True') {
      return null;
    }
    switch (item['Error'] as String?) {
      case 'Movie not found!':
        return Failure.elementNotFound;
      case 'Incorrect IMDb ID.':
        throw Failure.invalidCommand;
      case 'Invalid API key!':
        throw Failure.unauthorized;
      default:
        throw Failure.other;
    }
  }
}
