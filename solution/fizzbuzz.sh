#!/bin/bash

fizzbuzz() {
    local limit="$1"
    
    for (( i = 1; i <= limit; i++ )); do
        output=""
        
        if (( i % 3 == 0 && i % 5 == 0 )); then
            output="Fizz Buzz"
        elif (( i % 3 == 0 )); then
            output="Fizz"
        elif (( i % 5 == 0 )); then
            output="Buzz"
        else
            output="$i"
        fi

        printf "%s\n" "$output"
    done
}
