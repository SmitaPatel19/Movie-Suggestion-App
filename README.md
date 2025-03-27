# 🎬 Movie App

A sleek Flutter app that lets you explore and favorite movies with a beautiful UI, smooth animations, and easy navigation.

## ✨ Features

**Gorgeous Movie Cards** – Circular images, smooth animations, and a polished design  
**Favorite System** – Save your favorite movies using SharedPreferences  
**Modern & Responsive UI** – Follows Material Design 3 for a seamless experience  
**Search & Sort** – Quickly find movies and sort them by title, episodes, or release date  
**Detailed Movie View** – See movie info, images, and extra details  
**Optimized for All Screens** – Works great on both small and large devices

## Getting Started

### 📌 Prerequisites
- Install the latest **Flutter SDK**
- Ensure you have **Dart SDK** installed
- Use **Android Studio** or **VS Code** with the Flutter plugin

### 🔧 Installation

1️. Clone this repository:
```bash
git clone https://github.com/yourusername/movie-app.git
```  
2️. Navigate to the project folder:
```bash
cd movie-app
```  
3️. Install required dependencies:
```bash
flutter pub get
```  
4️. Run the app:
```bash
flutter run
```  

## 🗂️ Project Structure

```
lib/
├── main.dart               # App entry point
├── movie_list_page.dart    # Main screen with movie list
├── movie_description_page.dart  # Detailed movie screen
├── movie_model.dart        # Data model and movie info
```

## 📦 Dependencies

The app uses these Flutter packages:
- `flutter_staggered_animations` – For eye-catching list animations
- `shared_preferences` – To store your favorite movies

Add them in `pubspec.yaml`:
```yaml
dependencies:
  flutter_staggered_animations: ^1.0.0
  shared_preferences: ^2.0.0
```  

## 🎨 Customization

Want to tweak the app? Here’s where to start:  
**Colors** → `main.dart` (change `primarySwatch`)  
**Movie List** → `movie_model.dart` (update movie data)
**App Bar Style** → Modify headers in different pages

## 🤝 Contributing

We welcome contributions! If you’d like to improve the app, feel free to **open an issue** or **submit a pull request**.

---

Happy Coding! 💙