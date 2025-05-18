#!/bin/bash
docker build -t cowsay-test .
output=$(docker run --rm cowsay-test "Test passed")

if echo "$output" | grep -q "Test passed"; then
  echo "✅ Test passed!"
  exit 0
else
  echo "❌ Test failed!"
  exit 1
fi

