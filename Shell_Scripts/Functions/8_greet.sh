#!/bin/bash
# Simple variable example
name="DevOps"
echo "Hello, $name!"
# Conditional statement
if [ $name == "DevOps" ]; then
    echo "Welcome to the world of DevOps!"
else
    echo "This message should never appear."
fi
# Loop example
for i in {1..5}; do
    echo "Iteration $i"
done
# Function definition
function greet() {
    echo "Greetings from the function!"
}
# Calling the function
greet
