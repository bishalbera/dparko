import 'package:equatable/equatable.dart';
import 'package:parko/core/res/media_res.dart';

class PageContent extends Equatable {
  const PageContent({
    required this.image,
    required this.title,
    required this.description,
  });

  const PageContent.first()
      : this(
          image: MediaRes.carPic,
          title: 'Welcome to\nParko!',
          description: 'Making rides faster and even more secure!, you are at the correct place! ;)',
        );

  final String image;
  final String title;
  final String description;

  @override
  List<Object?> get props => [image, title, description];
}