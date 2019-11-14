#######schedular.sh#########
########ashishvz###########
########v0.1##############
echo "----------------------------------------"
echo "Welcome to Patient and Doctor Scheduler"
echo "----------------------------------------"
echo "#########################################"
echo "----------------------------------------"

doc_array=("ashish" "tejaus" "suresh")
time_array=("9:00" "9:30" "10:00" "10:30" "11:00" "11:30" "12:00" "12:30" "02:00" "02:30" "03:00" "03:30" "04:00" "04:30")


while [ true ]
do
 echo "The doctors available for appointment"
 echo "----------------------------------------"
 arraylen=${#doc_array[@]}
 for(( i=1; i<${arraylen}+1; i++ )) ;
do
   echo $i"."${doc_array[$i-1]}
done
echo "select doctor number which you want to book appointment"
read doc_num

case "$doc_num" in
"1") echo "You have selected Dr.Ashish"
     echo "Select the available time slot"
     timearr_len=${#time_array[@]}
     for(( i=1; i<${timearr_len}+1; i++ )) ;
	do
     echo $i"."${time_array[$i-1]}
     done
     echo "-------------------"
     read time_num
     case "$time_num" in
     "1") if [ "${time_array[0]}" == "NA" ] ; then
	  echo "Slot is full!!" 
          else
	  echo "Your appointment is booked with Dr.Ashish at 09:00"
	   time_array[0]="NA"
          fi     
      ;;
     "2") echo "Your appointment is booked with Dr.Ashish at 09:30"
     ;;
     "3") echo "Your appointment is booked with Dr.Ashish at 10:00"
     ;;
     "4") echo "Your appointment is booked with Dr.Ashish at 10:30"
     ;;
     "5") echo "Your appointment is booked with Dr.Ashish at 11:00"
     ;;
     "6") echo "Your appointment is booked with Dr.Ashish at 11:30"
     ;;
     "7") echo "Your appointment is booked with Dr.Ashish at 12:00"
     ;;
     "8") echo "Your appointment is booked with Dr.Ashish at 12:30"
     ;;
     "9") echo "Your appointment is booked with Dr.Ashish at 02:00"
     ;;
     "10") echo "Your appointment is booked with Dr.Ashish at 02:30"
     ;;
     "11") echo "Your appointment is booked with Dr.Ashish at 03:00"
     ;;
     "12") echo "Your appointment is booked with Dr.Ashish at 03:30"
     ;;
     "13") echo "Your appointment is booked with Dr.Ashish at 04:00"
     ;;
     "14") echo "Your appointment is booked with Dr.Ashish at 04:30"
     ;;
     esac
;;
"2") echo "You have selected Dr.Tejaus"
;;
"3") echo "You have selected Dr.Suresh"
;;
esac
echo "press 0 to continue else press 1"
read a
if [ "$a" -eq 1 ]; then
    echo "Thank You Visit again"
   break
fi
done
 #read doc
