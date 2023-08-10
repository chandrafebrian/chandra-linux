
#!/bin/bash

# Function to count files in the current directory
count_files() {
    local file_count=$(ls -l | grep -v ^d | wc -l)
    echo "$file_count"
}

# Main game loop
while true; do
    total_files=$(count_files)

    # Ask the user for their guess
    read -p "How many files are in the current directory? " user_guess

    if ! [[ $user_guess =~ ^[0-9]+$ ]]; then
        echo "Please enter a valid number."
    elif [[ $user_guess -lt $total_files ]]; then
        echo "Too low! Try again."
    elif [[ $user_guess -gt $total_files ]]; then
        echo "Too high! Try again."
    else
        echo "Congratulations! You guessed correctly. There are $total_files files in the current directory."
        break
    fi
done

