# work_record_app

# File structure 📁

```
lib
  - constant/
    - color_constants.dart
    - style_constants.dart
  - extension/
    - extension.dart
  -l10n/
    - app_en.arb
    - app_jp.arb
    - l10n.dart
    - l10n_en.dart
    - l10n_jp.dart
  - screen/
    - timer
      - timer_screen.dart
      - timer_screen_state.dart
      - timer_screen_state_notifier.dart
    - timer_set
      - timer_set_screen.dart
      - timer_set_screen_state.dart
      - timer_set_screen_state_notifier.dart
  - main.dart
  - my_app.dart
```

# Architecture 😃 [MVVM]

![to1719_mvvm001-01_MASK](https://user-images.githubusercontent.com/67954894/175755106-76e20f74-f68b-4ef1-a9bb-c7f4cd45f14d.jpeg)

# Package for State Management 📦

・RiverPod

# Naming convention 😄

| variable name | code style | example |
| :--- | :--- | :--- |
| Class name | UpperCamelCase | `HomeScreen` |
| File/Directory/Package | lowercase_with_underscores | `lib/screen/home/home_screen.dart` |
| Field/Function name | lowerCamelCase | `routeName` |
| Constant name | lowerCamelCase | `parameter` |

