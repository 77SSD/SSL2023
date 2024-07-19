#!/bin/bash

# Check if the input file exists
if [ ! -f "num.txt" ]; then
    echo "Error: num.txt file not found."
    exit 1
fi

# Use awk to extract and display palindrome numbers
awk '
{
    number = $0
    reverse = ""
    for (i = length(number); i >= 1; i--) {
        reverse = reverse substr(number, i, 1)
    }
    if (number == reverse) {
        print number
    }
}
' num.txt
