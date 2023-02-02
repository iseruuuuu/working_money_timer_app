import 'l10n.dart';

/// The translations for English (`en`).
class L10nEn extends L10n {
  L10nEn([String locale = 'en']) : super(locale);

  @override
  String get timerSetAppBar => 'WorkingTimer';

  @override
  String get timerSetWorkTime => 'SettingTime';

  @override
  String get timerSetWorkPrice => 'Hourly wage';

  @override
  String get timerSetStart => 'START';

  @override
  String get hour => 'oh';

  @override
  String get minutes => '';
}
