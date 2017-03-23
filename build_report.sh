# Check the existance of "big.txt"
if [ ! -f "big.txt" ]; then
    echo "Error: big.txt is not present"

# Check the existance of "primes.c" and "scanfile.cpp"
elif [ ! -f "primes.c" ] || [ ! -f "scanfiles.cpp" ]; then
    echo "Error: primes.c and scanfiles.cpp do not exist"

# Run the test
else
    clang primes.c -o primes -w
    clang scanfiles.cpp -o scanfiles

    # Print header
    echo "Testing primes.c / scanfile.cpp Runtimes:"

    # Run "primes" five times in the background
    echo -e "\nPrimes (1):"
    ./primes &

    echo -e "\nPrimes (2):"
    ./primes &

    echo -e "\nPrimes (3):"
    ./primes &

    echo -e "\nPrimes (4):"
    ./primes &

    echo -e "\nPrimes (5):"
    ./primes &

    # Time how long "scanfiles" takes to run
    echo -e "\nRunning Scanfiles:"
    time ./scanfiles > /dev/null
fi
