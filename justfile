default: gen lint

install_dependencies:
    ./build-scripts/install_dependencies

gen:
    ./build-scripts/code-gen

build-web-pkg: gen
    ./build-scripts/build-web-pkg

lint:
    cd native && cargo fmt
    dart format .

clean:
    ./build-scripts/clean
    
serve *args='': gen build-web-pkg
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
