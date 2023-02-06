#!/bin/bash
#written by: v-filip

clear_skip() {
if [[ $CLEAR_SKIP != "true" ]]
then
	echo
	echo "<>Press any key to clear...<>"
	read TMP
	clear
fi
}

sub_menu_one() {
	while true 
	do
		CLEAR_SKIP="false"
		echo "-----------------------------"
		echo "|       Sub One             |"
		echo "-----------------------------"
		echo "| a) Option 1               |"
		echo "| b) Option 2               |"
		echo "| r) Return to the main menu|"
		echo "-----------------------------"
		read -p "selection: " SMO
		case $SMO in
			r)
				CLEAR_SKIP="true"
				clear
				return 0
				;;
				
			a)
				echo "You've selected option 1!"
				;;


			b)
				echo "You've selected option 2"
				;;

			*)
				echo "Invalid selection"
		esac
		clear_skip
	done
}

sub_menu_two() {
	while true 
	do	
		CLEAR_SKIP="false"
		echo "-----------------------------"
		echo "|       Sub Two             |"
		echo "-----------------------------"
		echo "| a) Option 1               |"
		echo "| b) Option 2               |"
		echo "| r) Return to the main menu|"
		echo "-----------------------------"
		read -p "selection: " SMT
		case $SMT in
			r)
				CLEAR_SKIP="true"
				clear
				return 0
				;;
				
			a)
				echo "You've selected option 1!"
				;;

			b)
				echo "You've selected option 2!"
				;;

			*)
				echo "Invalid selection"
				;;
		esac
		clear_skip
	done
}


while true
do
	CLEAR_SKIP="false"
	clear
	echo "------------------------"
	echo "| a) Sub Menu 1        |"
	echo "| b) Sub Menu 2        |"
	echo "| c) Test              |"  
	echo "| e) Exit              |"
	echo "------------------------"
	read -p "Please make your selection [ex. a]: " SELECTION
	case $SELECTION in
		e)
			echo "-------------------------------------------"
			echo "Thank you for using this script, exiting..."
			echo "-------------------------------------------"
			exit 0
			;;

		a)
			clear
			sub_menu_one
			CLEAR_SKIP="true"
			;;

		b)
			clear
			sub_menu_two
			CLEAR_SKIP="true"
			;;

		c)
			echo "test"
			;;

		*)
			echo "Invalid selection"
			;;

	esac
	clear_skip
done
