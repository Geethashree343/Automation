#!/bin/bash -e

echo "Please Enter What You Want To Do: ";
echo "1. Commit and Push the Code"
echo "2. Create a Branch and Checkout" 
echo "3. Check List of Branches in the Repository"
echo "4. Checkout to a Particular Branch"
echo "5. Pull Remote Changes"
echo "6. Check for the changes done in Local Repository"
echo "7. Initialize a Empty Git Repository"
echo "8. Clone a Repository"
echo "9. Exit From Menu"
echo -n "Enter Your Menu Choice [1-9]: "

while :
do

# reading User Choice
read choice

# the options values from Menu

case $choice in

# patter 1
   1)   # add the files to staging directory
        git add . -A

        #Committing files to staging directory
        # Read Input from user for Commit Message
        read -p "Enter the Commit Message: " cmt

        # Using Input from User and Commiting it to Local Repository
        git commit -m "$cmt"

        # Pushing the Code to Remote Repository
        git push;;

# patter 2
    2)  # Create a New Branch and checkout
        read -p "Enter the New Branch Name: " branch
        git checkout -b "$branch" ;;

# patter 3
    3)  # Check list of branches
        git branch ;;

# patter 4
    4)  # Checkout to a particular branch
        read -p "Enter the Branch Name: " pbranch
        git checkout "$pbranch" ;;

# patter 5
    5)  # Pull remote changes to local repository
        git Pull ;;

# patter 6
    6)  # Check for the changes done in Local Repository
        git status ;;

# patter 7
    7)  # Initialize a Empty Git Repository
        git init ;;

# patter 8
    8)  # Clone a particular repository
        read -p "Enter the Clone URL: " curl
        git clone "$curl" ;;

# patter 9
    9) # Exit from Menu
       echo "Quitting..."
       exit ;;
    
    # Default Patten
    *) echo "Invalid Option" ;;

esac
    echo -n "Enter Your Menu Choice [1-9]: "
done