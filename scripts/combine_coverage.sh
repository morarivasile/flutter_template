#!/usr/bin/env bash

escapedPath="$(pwd | sed 's/\//\\\//g')"

if grep flutter pubspec.yaml > /dev/null; then
  if [ -d "coverage" ]; then
    # combine line coverage info from package tests to a common file
    if [ ! -d "$MELOS_ROOT_PATH/coverage_report" ]; then
      mkdir -p "$MELOS_ROOT_PATH/coverage_report"
    fi
    sed '/\.g\.dart/d' coverage/lcov.info | sed "s/^SF:lib/SF:$escapedPath\/lib/g" >> "$MELOS_ROOT_PATH/coverage_report/lcov.info"
    rm -rf "coverage"
  fi
fi