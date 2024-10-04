#!/bin/bash

n="$1"

for ((i=1; i<=n; i++)); do
    output=""

    if (( i % 3 == 0 )); then
        output+="Fizz"
    fi

    if (( i % 5 == 0 )); then
        output+="Buzz"
    fi

    if [[ -z "$output" ]]; then
        output="$i"
    else
        output+=" "
    fi

    printf "%s\n" "$output"
done
