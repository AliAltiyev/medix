class SoundPath {
  static final SoundPath _instance = SoundPath._internal();

  factory SoundPath() {
    return _instance;
  }

  SoundPath._internal();

  static const String ambientTranquality =
      'assets/sounds/ambient_tranqulity.mp3';
  static const String blissfulMelodies = 'assets/sounds/blissful_melodies.mp3';
  static const String camOasis = 'assets/sounds/calm_oasis.mp3';
  static const String gentleSerenity = 'assets/sounds/gentle_serenity.mp3';
  static const String hormanyWaves = 'assets/sounds/hormanyWaves';
  static const String magicIsland = 'assets/sounds/magicIsland.mp3';
  static const String onceInParis = 'assets/sounds/once_in_paris.mp3';
  static const String peacefullResonance =
      'assets/sounds/peaceful_resonance.mp3';
  static const String reflectedLight = 'assets/sounds/reflected_light.mp3';
  static const String sereneSoundscape = 'assets/sounds/serene_soundscape.mp3';
  static const String soothingRhythms = 'assets/sounds/soothing_rhythms.mp3';
  static const String tranquilHarmony = 'assets/sounds/tranquil_harmony.mp3';
  static const String zenHormanies = 'assets/sounds/zen_harmonies.mp3';
}
