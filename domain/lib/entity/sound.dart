import 'package:domain/domain.dart';

final class Sound extends Equatable {
  final String name;
  final String image;
  final String sound;
  final String title;
  final String subtitle;
  final String duration;

  const Sound({
    required this.name,
    required this.image,
    required this.sound,
    required this.title,
    required this.subtitle,
    required this.duration,
  });

  @override
  List<Object?> get props => <Object?>[
        name,
        image,
        sound,
        duration,
      ];

  static List<Sound> relax = <Sound>[
    const Sound(
      name: StringConstants.relaxCartTitle1,
      image: ImagePaths.relax1,
      sound: SoundPath.ambientTranquality,
      title: StringConstants.relaxCartTitle1,
      subtitle: StringConstants.relaxCartTitle1,
      duration: '2:55',
    ),
    const Sound(
      name: StringConstants.relaxCartTitle2,
      image: ImagePaths.relax2,
      sound: SoundPath.blissfulMelodies,
      title: StringConstants.relaxCartSubtitle2,
      subtitle: StringConstants.relaxCartTitle2,
      duration: '2:55',
    ),
    const Sound(
      name: StringConstants.relaxCartTitle3,
      image: ImagePaths.relax3,
      sound: SoundPath.camOasis,
      title: StringConstants.relaxCartTitle3,
      subtitle: StringConstants.relaxCartTitle3,
      duration: '2:55',
    ),
  ];
}
