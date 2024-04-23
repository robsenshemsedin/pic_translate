# PicTranslate: Learn Item Names in New Languages
PicTranslate is a Flutter app that helps you learn the names of items in 10 different languages. Simply take a picture of an item, and the app will provide its name, description, and example sentences in both English and your chosen language. This is powered by Google AI's Gemini-Pro-Vision model through the Dart SDK.

# Features:
- Image Capture: Take a photo of any item you want to learn about.
- Detailed Descriptions: Get descriptions and example sentences for the item in both English and your preferred language.
  
![Untitled design](https://github.com/robsenshemsedin/pic_translate/assets/91184071/5d2d2537-8f1b-47c2-81b5-9c2fef14aa74)

# Installation:
1. Clone the repository.
2. Navigate to the project directory.
3. Run `flutter pub get` to install dependencies.
4. Start the app with `flutter run`.

# Usage:
- Choose the language you want to learn.
- Take a picture of an item.
- View the item's name, description, and examples in both English and your chosen language.
Note: While the app currently supports 10 languages, you can explore adding more from the 44 languages supported by the Gemini API.

# Dependencies:
- flutter_secure_storage: This package allows to securely store sensitive data, such as passwords or tokens, on the user's device using keychains or similar secure storage mechanisms.
- get_it: A service locator for dependency injection, simplifying the management and access of objects throughout the app.
- google_fonts: Provides easy access to Google Fonts library, allowing to use various fonts in the app's UI.
- google_generative_ai: This package  enables integration with Google's generative AI capabilities, such as text generation and other AI-powered features.
- image_picker: Allows users to select images from their device's gallery or camera within the app.
- json_annotation: Simplifies the process of converting Dart objects to and from JSON format using code generation.

# Dev Dependencies:
- build_runner: A tool that runs code generators, used in conjunction with packages like json_serializable to generate code at compile time.
- json_serializable: Works with build_runner to automatically generate code for serialization and deserialization of Dart objects to and from JSON format, reducing boilerplate code.

# Contributing
Contributions are welcome! If you'd like to contribute to PicTraslate, please follow these steps:

1. Fork the repository.
2. Create your feature branch (`git checkout -b feature/YourFeature`).
3. Commit your changes (`git commit -am 'Add some feature'`).
4. Push to the branch (`git push origin feature/YourFeature`).
5. Open a pull request.

Please make sure to follow the code of conduct and contribution guidelines.
