#!/bin/sh
if ! [ -f shrdl.sh ]; then
    printf "shrdl.sh not found.\n"
    printf "make sure shrdl.sh in in the same directory as this script.\n"
    exit 1
elif ! [ -f repos.txt ]; then
    printf "repos.txt file not found.\n"
    printf "Create a file in the same directory as this script containing the URLs for repos you want to download"
    exit 1
fi

while read -r line; do
    printf "Downloading repo: %s\n" "$line"
    ./shrdl "$line"
done < ./repos.txt

printf "Done!\n"
