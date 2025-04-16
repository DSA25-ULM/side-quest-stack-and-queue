#!/bin/bash

# Compile the program (RPN)
g++ "Queue Simulation/QueueSimulation.cpp" -o QSim
if [ $? -ne 0 ]; then
  echo "❌ Compilation failed!"
  exit 1
fi

# Initialise score
score=0
total=10

# Loop through test cases
for i in $(seq 1 $total); do
  input="../test/QueueSimulation/input$i.txt"
  expected="../test/QueueSimulation/expected_output$i.txt"
  output="../test/QueueSimulation/actual_output$i.txt"

  # Run the program with input
  ./QSim < "$input" > "$output"

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
