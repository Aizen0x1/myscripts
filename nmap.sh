#!/bin/bash

echo "Choose an option:"
echo "1) Quick scan"
echo "2) No ping scan"

read -p "Enter your choice: " choice
read -p "Enter ip:" IP

case $choice in
    1) 	
    	echo ""
    	echo "Running cmd  > nmap -sV -sC -v --min-rate 1000 -p- -A $IP"
    	echo ""
    	echo ""
        nmap -sV -sC -v --min-rate 1000 -p- -A $IP 
        ;;
    2)
        echo ""
        echo "Running cmd > nmap -sV -sC -v --min-rate 1000 -p- -A -Pn $IP"
        echo ""
        echo ""
        nmap -sV -sC -v --min-rate 1000 -p- -A $IP
        ;;
    *)
        echo "Invalid choice"
        ;;
esac
