# 🛒 Simple Flutter Cart App

A basic Flutter application demonstrating **state management using Provider** for cart functionality.

<img width="200" height="400" alt="image" src="https://github.com/user-attachments/assets/ee14fbfc-5964-40c6-81d0-effab9b4a2b1" />
<img width="200" height="400" alt="image" src="https://github.com/user-attachments/assets/f91edd74-e48c-4843-b121-318f2af60316" />


---

## 📱 Features

- Display product list with images and names.
- Add items to cart using Provider (`ProductVm`).
- View and remove items in **Cart Review** screen.
- Real-time cart item count with `Badge` in AppBar.

---

## 🧩 Folder Structure

```
lib/
├── main.dart
├── screens/<img width="372" height="691" alt="image" src="https://github.com/user-attachments/assets/91459bed-62db-4993-8037-47b9d3b09d64" />
<img width="372" height="691" alt="image" src="https://github.com/user-attachments/assets/0f8efb5e-6d36-4252-aa78-986ba85765e4" />

│   ├── home_screen.dart
│   └── cart_review.dart
└── view_model/
    └── productVm.dart
```

---

## ⚙️ Setup Instructions

1. **Clone or download** this project.
2. Open terminal in the project folder.
3. Run the following commands:

```bash
flutter pub get
flutter run
```

---

## 📦 Dependencies

Add these in your `pubspec.yaml`:

```yaml
dependencies:
  flutter:
    sdk: flutter
  provider: ^6.0.5
```

---

## 🖼️ Assets

Place product images in:
```
assets/images/
```
Then register them in `pubspec.yaml`:
```yaml
flutter:
  assets:
    - assets/images/
```

---

## 💡 How It Works

- `ProductVm` extends `ChangeNotifier` and holds product & cart lists.
- `HomeScreen` allows adding items to cart.
- `CartReview` reads the shared cart list via Provider.
- Both share the same state from the top-level `ChangeNotifierProvider` in `main.dart`.

---

## 👨‍💻 Author

Developed by **Saba Fadhl**  
Flutter Developer


