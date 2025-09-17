# Copilot Instructions for Flutter (VSCode)

These instructions guide GitHub Copilot inside **VSCode** when assisting with Flutter and Dart development.  
The goal is to ensure **clean, performant, and maintainable code** following modern best practices.

---

## Project Structure
- Assume a standard Flutter project with `lib/main.dart` as the entry point.

---

## Package Management
- Suggest stable and well-maintained packages from **pub.dev**.  
- Add dependencies with:
  ```bash
  flutter pub add <package_name>
  ```
- Add dev dependencies with:
  ```bash
  flutter pub add dev:<package_name>
  ```

---

## Code Quality
- Maintain clear separation of concerns (UI vs business logic).  
- Use meaningful and consistent naming conventions.  

---

## Dart Best Practices
- Follow [Effective Dart](https://dart.dev/guides/language/effective-dart).  
- Group related classes and libraries logically.  
- Add doc comments to all **public APIs**.  
- Use `async`/`await` with error handling.  
- Leverage **pattern matching** where beneficial.  

---

## Flutter Best Practices
- Treat widgets (esp. `StatelessWidget`) as **immutable**.  
- Prefer **composition** over inheritance.  
- Break down large `build()` methods into smaller widgets.  
- Use `ListView.builder` for lists.  
- Always use `const` constructors where possible.  
- Avoid heavy work inside `build()`.  

---

## Application Architecture

### State Management
- Default to Flutter’s **built-in tools**:  
  - `ValueNotifier` + `ValueListenableBuilder` for local state.  
  - `FutureBuilder` / `StreamBuilder` for async work.  
  - `ChangeNotifier` + `ListenableBuilder` for shared state.  
- Use **constructor injection** for dependencies.  
- Use `provider` only if explicitly requested.  

```dart
final ValueNotifier<int> _counter = ValueNotifier<int>(0);

ValueListenableBuilder<int>(
  valueListenable: _counter,
  builder: (context, value, _) => Text('Count: $value'),
);
```

### Data Flow
- Define data models as classes.  
- Use repositories/services to abstract APIs or databases.  

### Routing
- Prefer `go_router` for declarative navigation:  
  ```dart
  flutter pub add go_router
  ```
- Use `Navigator` for short-lived or dialog screens.  

### Data Handling
- Use `json_serializable` + `json_annotation`.  
- Default to `FieldRename.snake` for JSON.  

---

## Logging
- Use `dart:developer` → `developer.log()`.  
- Support structured logging with `error` and `stackTrace`.  

---

## Error Handling
- Catch exceptions gracefully (`try/catch`).  
- Consider functional error handling (`Either`) for complex flows.  

---

## Code Generation
- Always use `build_runner`:  
  ```bash
  dart run build_runner build --delete-conflicting-outputs
  ```

---

## Testing
- `package:test` → unit tests.  
- `flutter_test` → widget tests.  
- `integration_test` → integration tests.  
- Prefer `package:checks` for expressive assertions.  

---

## Visual Design & Theming
- Build responsive UIs for **mobile & web**.  
- Use **Material 3** with `useMaterial3: true`.  
- Support **light/dark themes** with `ThemeMode`.  
- Generate palettes with `ColorScheme.fromSeed`.  
- Apply custom fonts via `google_fonts`.  

```dart
final ThemeData lightTheme = ThemeData(
  useMaterial3: true,
  colorScheme: ColorScheme.fromSeed(
    seedColor: Colors.deepPurple,
    brightness: Brightness.light,
  ),
);
```

---

## Assets & Images
- Declare assets in `pubspec.yaml`.  
- Use `Image.asset` for local, `Image.network` for remote (with loaders/errors).  

---

## Accessibility (A11Y)
- Always design with **inclusive access** in mind.  
- Consider various physical and cognitive abilities, age groups, and learning styles.  
