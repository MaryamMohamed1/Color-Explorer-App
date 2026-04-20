# Color Explorer App 🎨

A multi-screen Flutter application developed as a task for the SBS student activity. This project demonstrates core Flutter concepts including screen navigation, state management, form validation, and responsive UI components.

## 🚀 Features

* **🔐 Login & Registration:** * Includes input validation to ensure all fields are filled.
    * Features a password visibility toggle (Eye icon) for better user experience.
* **🧭 Main Navigation Shell:** * Implements a `BottomNavigationBar` to switch seamlessly between the Gallery and Settings screens without losing state.
* **🎨 Interactive Color Gallery:** * Displays a 2-column grid of color cards.
    * Includes a real-time search functionality that instantly filters the color grid based on user input.
* **✨ Dynamic Detail Screen:** * Tapping a color card navigates to a detail screen where the entire background adapts dynamically to the selected color.
* **⚙️ Settings & Info:** * Displays developer information cleanly.
    * Features a secure **Logout** button that clears the entire navigation history, preventing users from returning to the app using the device's back button.

## 🛠️ Technologies & Widgets Used

* **Framework:** Flutter / Dart
* **UI Components:**
    * `Scaffold`, `AppBar`, `BottomNavigationBar`
    * `GridView.builder` (For the responsive color gallery)
    * `ListView.builder` (For displaying settings and developer info)
* **Controllers & Logic:**
    * `TextEditingController` (For handling form inputs and search logic)
    * `Navigator.pushAndRemoveUntil` (For secure logout routing)
    * `Navigator.push` & `Navigator.pop` (For passing data between screens)
    * `StatefulWidget` (For real-time UI updates like search filtering and password toggling)

## 👤 Developer
**Maryam Mohamed**
