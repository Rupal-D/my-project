echo "Welcome to my guessing game!"
num=$( ls -l | find -type f | wc -l )
function try_guess
{
        echo "Guess how many files are in the current directory"
        while true
        do
        read guess
        if [ $guess -eq $num ]
        then
                echo "Perfect!! Congratulations"
                exit
        elif [ $guess -gt $num ]
        then
                echo "Oops!Guess was too high"
                echo "Try again"
                try_guess
        else
                echo "Oops!Guess was too low"
                echo "Try again"
                try_guess
        fi
        done
}
try_guess




