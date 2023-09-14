# flutter_rust_bridge_template_enhanced

## Run locally
### Web
Most commands are defined in the [justfile](./justfile). To run locally just run `just run_web` and open [http://localhost:8080/](http://localhost:8080/) in your fave browser. You can open the page in a browser by running `just open_<browser>`.

Support status for browsers is as follows
| Browser | Supported? |
|---------|------------|
| Chrome  | ✅          |
| Safari  | ✅          |
| Firefox | ✅          |


### Desktop
To run locally for desktop run `just run_<OS>`.

Support status for OS's is as follows

| Browser       | Supported? |
|---------------|------------|
| MacOS (intel) | ✅          |
| MacOs (M1)    | ❔          |
| Windows       | ❔          |
| Linux         | ❔          |


Old readme (everything past here is from the source project)
# flutter_rust_bridge_template

This repository serves as a template for Flutter projects calling into native Rust
libraries via `flutter_rust_bridge`.

## Getting Started

To begin, ensure that you have a working installation of the following items:
- [Flutter SDK](https://docs.flutter.dev/get-started/install)
- [Rust language](https://rustup.rs/)
- `flutter_rust_bridge_codegen` [cargo package](https://cjycode.com/flutter_rust_bridge/integrate/deps.html#build-time-dependencies)
- Appropriate [Rust targets](https://rust-lang.github.io/rustup/cross-compilation.html) for cross-compiling to your device
- For Android targets:
    - Install [cargo-ndk](https://github.com/bbqsrc/cargo-ndk#installing)
    - Install [Android NDK 22](https://github.com/android/ndk/wiki/Unsupported-Downloads#r22b), then put its path in one of the `gradle.properties`, e.g.:

```
echo "ANDROID_NDK=.." >> ~/.gradle/gradle.properties
```

- For iOS targets:
  - Install [cargo-xcode](https://gitlab.com/kornelski/cargo-xcode#installation)
- [Web dependencies](http://cjycode.com/flutter_rust_bridge/template/setup_web.html) for the Web

Then go ahead and run `flutter run` (for web, run `dart run flutter_rust_bridge:serve` instead). When you're ready, refer to our documentation
[here](https://fzyzcjy.github.io/flutter_rust_bridge/index.html) to learn how to write and use binding code.

Once you have edited `api.rs` to incorporate your own Rust code, the bridge files `bridge_definitions.dart` and `bridge_generated.dart` are generated using the following command (note: append ` --wasm` to add web support):

### Windows
```
flutter_rust_bridge_codegen --rust-input native\src\api.rs --dart-output .\lib\bridge_generated.dart --dart-decl-output .\lib\bridge_definitions.dart
```

### Linux/MacOS/any other Unix
```
flutter_rust_bridge_codegen --rust-input native/src/api.rs --dart-output ./lib/bridge_generated.dart --dart-decl-output ./lib/bridge_definitions.dart
```

## Scaffolding in existing projects

If you would like to generate boilerplate for using `flutter_rust_bridge` in your existing projects,
check out the [`flutter_rust_bridge` brick](https://brickhub.dev/bricks/flutter_rust_bridge/)
for more details.

## Disclaimer

This template is not affiliated with flutter_rust_bridge. Please file issues and PRs related to the template here,
not flutter_rust_bridge.

## License

Copyright 2022 Viet Dinh.

This template is licensed under either of
- [Apache License, Version 2.0](https://www.apache.org/licenses/LICENSE-2.0) ([LICENSE-APACHE](LICENSE-APACHE))
- [MIT license](https://opensource.org/licenses/MIT) ([LICENSE-MIT](LICENSE-MIT))

at your option.

The [SPDX](https://spdx.dev/) license identifier for this project is `MIT OR Apache-2.0`.
