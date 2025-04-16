#!/bin/bash

# Compile the program (RPN)
g++ "Evaluate Postfix Expression/EvaluatePostfixExpression.cpp" -o RPN
if [ $? -ne 0 ]; then
  echo "❌ Compilation failed!"
  exit 1
fi

# Initialise score
score=0
total=10

# Loop through test cases
for i in $(seq 1 $total); do
  input=".github/classroom/test/EvaluatePostfixExpression/input$i.txt"
  expected=".github/classroom/test/EvaluatePostfixExpression/expected_output$i.txt"
  output=".github/classroom/test/EvaluatePostfixExpression/actual_output$i.txt"

  # Run the program with input
  ./RPN < "$input" > "$output"

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
