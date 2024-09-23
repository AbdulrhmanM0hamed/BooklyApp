import 'package:equatable/equatable.dart';

class ImageLinks extends Equatable {
  final String smallThumbnail;
  final String thumbnail;

  const ImageLinks({
    required this.smallThumbnail,
    required this.thumbnail,
  });

  factory ImageLinks.fromJson(Map<String, dynamic> json) => ImageLinks(
        smallThumbnail: json['smallThumbnail'] as String? ?? 'N/A',
        thumbnail: json['thumbnail'] as String? ?? 'N/A',
      );

  Map<String, dynamic> toJson() => {
        'smallThumbnail': smallThumbnail,
        'thumbnail': thumbnail,
      };

  // دالة static لإرجاع كائن افتراضي
  static ImageLinks empty() {
    return const ImageLinks(
      smallThumbnail: 'N/A',
      thumbnail: 'N/A',
    );
  }

  @override
  List<Object?> get props => [smallThumbnail, thumbnail];
}
