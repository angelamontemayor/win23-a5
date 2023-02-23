#!/usr/bin/env bash

# (The absolute path to the program is provided as the first and only argument.)
CALCULATOR=$1

echo "We've set up a GitHub Actions Workflow that will run all"
echo "of the shell scripts in this directory as a series of tests."
echo
echo "To fail any test, you should use the exit 1 command;"
echo "To end a test early as a success, you should use the exit 0 command."

if ! $CALCULATOR 100 - 2; then
  echo 'ERROR! A valid run of the calculator (100 - 2) failed!'
  exit 1
fi

if ! $CALCULATOR 100 + 2; then
  echo 'ERROR! A valid run of the calculator (100 + 2) failed!'
  exit 1
fi

if [[ $($CALCULATOR 6 / 2) -ne 3 ]]; then
  echo 'ERROR! A valid run of the calculator (6 / 2) failed to produce 3 as an output!'
  exit 1
fi

if $CALCULATOR 3 ^ 2; then
  echo 'ERROR! An invalid run of the application (3 ^ 2) apparently succeeded?!'
  exit 1
fi
