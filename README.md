# Reusable Button

A lightweight and flexible Flutter package to build customizable, reusable button widgets quickly. It includes different types of buttons with built-in loading, visibility control, and route navigation support.

---

## Features

- **AppButton**: A fully customizable elevated button with optional logo, loading state, and disabled touch during loading.
- **AppTxtBtn**: A combination of a text label and a text button with optional loading state.
- **AppTxtRouteButton**: A button that navigates to a specified route or replaces the current route.
- **VisibilityButton**: A button that appears conditionally based on a visibility flag.
- Supports custom colors, loading indicators, and dynamic navigation.

---

## Getting Started

Add this package to your `pubspec.yaml`:

```yaml
dependencies:
  reusable_button: latest_version
```

Then run:

```bash
flutter pub get
```

---

## Usage

### Basic AppButton

```dart
AppButton(
  title: 'Submit',
  onPressed: () {},
  loading: false,
  bgColor: Colors.blue,
  txtColor: Colors.white,
);
```

### AppTxtBtn

```dart
AppTxtBtn(
  title: 'Don\'t have an account?',
  btnText: 'Sign Up',
  onPressed: () {},
);
```

### AppTxtRouteButton

```dart
AppTxtRouteButton(
  title: 'Already have an account?',
  btnText: 'Login',
  route: '/login',
);
```

### VisibilityButton

```dart
VisibilityButton(
  isVisible: true,
  btnTitle: 'Continue',
  onPressed: () {},
);
```

---

## Screenshots

(Coming soon)

---

## Contributions

Contributions are welcome! Feel free to open issues or submit pull requests.

---

## License

This project is licensed under the MIT License.

---

