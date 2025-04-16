#!/bin/bash

# Compile the program (Valid Parentheses)
g++ "Valid Parentheses/ValidParentheses.cpp" -o VP
if [ $? -ne 0 ]; then
  echo "❌ Compilation failed!"
  exit 1
fi

# Initialise score
score=0
total=10

# Loop through test cases
for i in $(seq 1 $total); do
  input="../ValidParentheses/input$i.txt"
  expected="../ValidParentheses/expected_output$i.txt"
  output="../ValidParentheses/actual_output$i.txt"

  # Run the program with input
  ./VP < "$input" > "$output"

  # Compare output to expected
  if diff -q "$output" "$expected" > /dev/null; then
    echo "✅ Test $i passed"
    ((score++))
  else
    echo "❌ Test $i failed"
    echo "Expected:"
    cat "$expected"
    echo ""
    echo "Got:"
    cat "$output"
    echo ""
    echo "------------------------"
  fi
done

# Summary
echo "Score: $score/$total"

# Exit code logic
if [ "$score" -eq "$total" ]; then
  exit 0
else
  exit 1
fi
