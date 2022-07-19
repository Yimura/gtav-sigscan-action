#!/bin/bash

output=$(sigscan $1)
exit_code=$?

# escape output because Github Actions are janky
output="${output//'%'/'%25'}"
output="${output//$'\n'/'%0A'}"
output="${output//$'\r'/'%0D'}"

case $exit_code in
  -1)
    title=
    echo "::error title=Invalid action argument passed.::The file you passed as an argument does not exist or isn't a file."
    echo '::set-output name=is_detected::false'
    ;;

  0)
    echo "No detections found, doing nothing..."
    echo '::set-output name=is_detected::false'
    ;;

  1)
    echo "::warning title=Input file is detected!::$output"
    echo "::set-output name=is_detected::true"
    echo "::set-output name=detected_string::$output"
    ;;
esac