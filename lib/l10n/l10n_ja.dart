// Project imports:
import 'l10n.dart';

/// The translations for Japanese (`ja`).
class L10nJa extends L10n {
  L10nJa([String locale = 'ja']) : super(locale);

  @override
  String get timerSetAppBar => '秒給タイマー';

  @override
  String get timerSetWorkTime => '設定時間';

  @override
  String get timerSetWorkPrice => '時給';

  @override
  String get timerSetStart => 'スタート';

  @override
  String get hour => '時';

  @override
  String get minutes => '分';

  @override
  String get snack_bar => '労働時間または時給を入力してください。';

  @override
  String get picker_title => '労働時間の設定';

  @override
  String get picker_cancel => 'キャンセル';

  @override
  String get picker_confirm => '設定';
}
