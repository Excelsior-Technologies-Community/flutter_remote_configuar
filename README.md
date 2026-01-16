## 🔧 Remote Config (Manual)

A lightweight, manual Remote Config–style Flutter library that allows you to manage feature flags, text, numbers, and boolean values without Firebase.

Ideal for small apps, games, and feature toggling using constructor-based configuration.

---
## ✨ Features

- No Firebase required

- Constructor-based configuration

- Update config at runtime

- Simple & fast

- Perfect for games & experiments

---
## Preview 

![WhatsApp Image 2026-01-16 at 4 50 08 PM](https://github.com/user-attachments/assets/c4ede0c5-1778-4310-9cdd-58ed2dcfa805)

---
## 📁 Example Structure
```
lib/
├── remote_config/
│   └── remote_config.dart
└── main.dart
```
---
## 📦 Installation

Add your library files directly to your Flutter project:
```
dependencies:
  flutter_image_compression:
    git:
      url: https://github.com/Excelsior-Technologies-Communitye/flutter_remote_configure.git
```
then run:
```
flutter pub get
```
---
## 🚀 Usage
```
final remoteConfig = RemoteConfig(
  initialConfig: {
    'showAds': true,
    'maxLives': 5,
    'welcomeText': 'Welcome Player!',
  },
);

remoteConfig.getBool('showAds');
remoteConfig.getInt('maxLives');
remoteConfig.getString('welcomeText');
```
---
## 📋 Properties
| Property | Description |
|---------|-------------|
| `initialConfig` | Initial configuration values |
| `getString()` | Returns string value |
| `getInt()` | Returns integer value |
| `getBool()` | Returns boolean value |
| `updateConfig()` | Update config at runtime |

---
## 🧠 Use Cases

- Feature toggles

- Game difficulty tuning

- Enable / disable ads

- Change UI text

- A/B testing (manual)
---
## 📄 License
```
Copyright (c) 2026 Excelsior Technologies

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software.

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND.
```
