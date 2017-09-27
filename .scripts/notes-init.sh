#!/usr/bin/env bash

# Initialise notes for a given PDF paper

_inputfile="$1"

[[ $# -ne 1 ]] && { echo "Filename required."; exit 1; }

_filename=$(basename "$_inputfile")
_filename="${_filename%.*}"
echo "Generating notes file for" $_filename"..."

_date=$(date +%Y-%m-%d)

cat > $_filename.md <<_EOF_
% Title
% Author One ; Author Two
% Created: $_date | Modified: $_date

## Section
_EOF_
