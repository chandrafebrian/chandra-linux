#!/bin/bash

# Get the title from the project directory name
title=$(basename "$(pwd)")

# Get the current date and time
datetime=$(date "+%Y-%m-%d %H:%M:%S")

# Count the lines of code in guessinggame.sh
lines_of_code=$(wc -l < guessinggame.sh)

# Create README content
readme_content="# $title Project\n\n"
readme_content+="This project was generated on $datetime.\n\n"
readme_content+="The \`guessinggame.sh\` script contains $lines_of_code lines of code.\n"

# Write content to README.md
echo -e "$readme_content" > README.md

