default: gen lint

gen:
    flutter pub get
    flutter_rust_bridge_codegen

lint:
    cd native && cargo fmt
    dart format .

clean:
    flutter clean
    cd native && cargo clean
    
serve *args='':
    flutter pub run flutter_rust_bridge:serve {{args}}

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
