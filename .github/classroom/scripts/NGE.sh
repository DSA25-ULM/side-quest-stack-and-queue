#!/bin/bash

# Compile the program (RPN)
g++ "Next Greater Element/NextGreaterElement.cpp" -o NGE
if [ $? -ne 0 ]; then
  echo "❌ Compilation failed!"
  exit 1
fi

# Initialise score
score=0
total=10

# Loop through test cases
for i in $(seq 1 $total); do
  input=".github/classroom/test/NextGreaterElement/input$i.txt"
  expected=".github/classroom/test/NextGreaterElement/expected_output$i.txt"
  output=".github/classroom/test/NextGreaterElement/actual_output$i.txt"

  # Run the program with input
  ./NGE < "$input" > "$output"

  sed -i 's/[[:space:]]\+$//' "$output"
  sed -i 's/[[:space:]]\+$//' "$expected"

  # Compare output to expected
  if cmp -s "$output" "$expected"; then
    echo "✅ Test $i passed"
    ((score++))
  else
    echo "❌ Test $i failed"
    echo "Expected:"
    cat -A "$expected"
    echo ""
    echo "Got:"
    cat -A "$output"
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
