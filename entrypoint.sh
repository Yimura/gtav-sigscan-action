#!/bin/bash

function escape_output
{
  local output=$1

  output="${output//'%'/'%25'}"
  output="${output//$'\n'/'%0A'}"
  output="${output//$'\r'/'%0D'}"

  echo "$output"
}

out=$(sigscan $1)

case $? in
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
    escaped_out=$(escape_output $out)

    echo "::warning title=Input file is detected!::$escaped_out"
    echo "::set-output name=is_detected::true"
    echo "::set-output name=detected_string::$escaped_out"
    ;;
esac