default: gen lint

gen:
    flutter pub get
    flutter_rust_bridge_codegen \
        --rust-input native/src/api.rs \
        --dart-output lib/bridge_generated.dart \
        --c-output ios/Runner/bridge_generated.h \
        --extra-c-output-path macos/Runner/ \
        --dart-decl-output lib/bridge_definitions.dart \
        --wasm

lint:
    cd native && cargo fmt
    dart format .

clean:
    flutter clean
    cd native && cargo clean
    rm -rf web/pkg
    
serve *args='':
    dart run flutter_rust_bridge:serve {{args}}

run_mac_intel:
    flutter run -d mac

run_windows:
    echo "this is not yet functional"

run_linux:
    echo "this is not yet functional"

run_web: serve

open_chrome:
    open -a "Google Chrome" http://localhost:8080/

open_firefox:
    echo "this is not yet functional"

open_safari:
    echo "this is not yet functional"

# vim:expandtab:sw=4:ts=4
