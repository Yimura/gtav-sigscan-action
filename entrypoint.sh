#!/bin/bash

out=$(sigscanner $1)

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
    echo "::warning title=Input file is detected!::$out"
    echo "::set-output name=is_detected::true"
    echo "::set-output name=detected_string::$out"
    ;;
esac