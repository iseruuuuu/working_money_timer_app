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

  @override
  String get snack_bar => 'Please enter working hours or hourly rate.';

  @override
  String get pickerTitle => 'Select Working Time';

  @override
  String get pickerCancel => 'Cancel';

  @override
  String get pickerConfirm => 'OK';

  @override
  String get timerRemainWorking => 'Remaining Working Hours';

  @override
  String get timerWorking => 'Working Hours';

  @override
  String get timerEarn => 'Salary';

  @override
  String get timerPrice => '\$';

  @override
  String get timerStart => 'START';

  @override
  String get timerStop => 'STOP';
}
