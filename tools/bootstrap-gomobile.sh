#!/bin/bash

repo_root=$(git rev-parse --show-toplevel)
build_dir="$repo_root/.build"

mkdir -p "$build_dir/pkg"

# Use a shared dependency cache by setting GOMODCACHE

GOMODCACHE="$build_dir/pkg" \
    go run golang.org/x/mobile/cmd/gomobile init

