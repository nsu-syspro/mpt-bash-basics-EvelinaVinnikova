#!/usr/bin/env bash

if [ "$#" -ne 1 ]; then
    exit 1
fi

archive="$1"

if [ ! -f "$archive" ]; then
    exit 1
fi

unpacked_dir="${archive}.unpacked"

if [ ! -d "$unpacked_dir" ]; then
    mkdir "$unpacked_dir"
fi
tar -xf "$archive" -C "$unpacked_dir"
