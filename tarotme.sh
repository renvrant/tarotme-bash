#!/bin/bash

arcana=("Fool" "Magician" "High Priestess" "Empress" "Emperor" "Hierophant" "Lovers" "Chariot" "Strength" "Hermit" "Wheel of Fortune" "Justice" "Hanged Man" "Death" "Temperance" "Devil" "Tower" "Star" "Moon" "Sun" "Judgement" "World" "Ace of Cups" "2 of Cups" "3 of Cups" "4 of Cups" "5 of Cups" "6 of Cups" "7 of Cups" "8 of Cups" "9 of Cups" "10 of Cups" "Page of Cups" "Knight of Cups" "Queen of Cups" "King of Cups" "Ace of Swords" "2 of Swords" "3 of Swords" "4 of Swords" "5 of Swords" "6 of Swords" "7 of Swords" "8 of Swords" "9 of Swords" "10 of Swords" "Page of Swords" "Knight of Swords" "Queen of Swords" "King of Swords" "Ace of Wands" "2 of Wands" "3 of Wands" "4 of Wands" "5 of Wands" "6 of Wands" "7 of Wands" "8 of Wands" "9 of Wands" "10 of Wands" "Page of Wands" "Knight of Wands" "Queen of Wands" "King of Wands" "Ace of Pentacles" "2 of Pentacles" "3 of Pentacles" "4 of Pentacles" "5 of Pentacles" "6 of Pentacles" "7 of Pentacles" "8 of Pentacles" "9 of Pentacles" "10 of Pentacles" "Page of Pentacles" "Knight of Pentacles" "Queen of Pentacles" "King of Pentacles")


randint=$RANDOM
let "randint %= ${#arcana[@]}"

card=${arcana[randint]}

case "$card" in
	*Swords*)
		color="\033[38;5;49m"
		suit="♤ "
		;;
	*Pentacles*)
		color="\033[38;5;221m"
		suit="♢ "
		;;
	*Cups*)
		color="\033[38;5;45m"
		suit="♡ "
		;;
	*Wands*)
		color="\033[38;5;202m"
		suit="♧ "
		;;
	*)
		color="\033[38;5;13m"
		suit="☆ "
		;;
esac

# adapted from http://ubuntuforums.org/showthread.php?t=2028113
echo_c() {
	w=50
	l=${#1}                              # length of the string
	printf "%"$((l+(w-l)/2))"s\n" "$1"   # print string padded to proper width (%Ws)
}


echo -e $color
printf "$suit%.0s" {1..25}
echo
echo
echo_c "$card" | awk '{print toupper($0)}'
#echo
#echo_c "~"
#echo
#printf "%-5s DESCRIPTION %-5s" | fmt -w 45
echo
printf "$suit%.0s" {1..25}
echo
