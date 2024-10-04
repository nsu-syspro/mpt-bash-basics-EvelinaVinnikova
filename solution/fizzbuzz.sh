#!/bin/bash

n="$1"

for (( i=1; i<=n; i++ )); do
    result=""

    if (( i % 3 == 0 )); then
        result+="Fizz"
    fi

    if (( i % 5 == 0 )); then
        result+="Buzz"
    fi

    if [[ -z "$result" ]]; then
        result="$i"
    fi

    printf "%s\n" "$result"
done
