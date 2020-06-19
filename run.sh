#!/bin/sh
javac Self.java

OUTPUT=$(java Self)
if [[ "$OUTPUT" == *"bad"* ]]; then
  echo "bad!"
  exit 1
fi

echo "good!"
exit 0
