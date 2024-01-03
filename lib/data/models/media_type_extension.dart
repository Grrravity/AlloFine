import 'package:allofine/domain/entities/media_type.dart';

extension OnMediaTypeString on String {
  MediaType get toEntity {
    switch (this) {
      case 'series':
        return const MediaType.series();
      case 'movie':
        return const MediaType.movie();
      default:
        return MediaType.other(label: this);
    }
  }
}

extension OnMediaType on MediaType {
  String get toDTO {
    return map(
      series: (_) => 'series',
      movie: (_) => 'movie',
      other: (other) => other.label,
    );
  }
}
