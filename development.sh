#!/bin/bash

function build_fe() {
  echo "================================================="
  echo "BUILD CUSTOMER FE"
  echo "================================================="
  flutter packages pub get
  flutter packages pub run build_runner build --delete-conflicting-outputs
}

build_fe

# TODO: find out on what system you are and run according device
flutter run -d linux
