#!/bin/bash

result=()

for ((i=1; i<=$1; i++)); do
    if (( i % 3 == 0 && i % 5 == 0 )); then
        result+=("Fizz Buzz")
    elif (( i % 3 == 0 )); then
        result+=("Fizz")
    elif (( i % 5 == 0 )); then
        result+=("Buzz")
    else
        result+=("$i")
    fi
done

printf "%s\n" "${result[@]}"
