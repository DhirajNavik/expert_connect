# Dev Dependency

flutter pub add -d package_name
flutter pub add -dev package_name

# Run command to generate new flavor file

dart run flutter_flavorizr

# Generate Icons

dart run flutter_launcher_icons -f flutter_launcher_icons-customer.yaml

dart run flutter_launcher_icons -f flutter_launcher_icons-expert.yaml

# Native splash screen

dart run flutter_native_splash:create --path=native_splash.yaml

# Freezed

dart run build_runner build

# Injactable

dart run build_runner build --delete-conflicting-outputs


