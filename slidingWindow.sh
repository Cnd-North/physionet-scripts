


# while read line1; do 
	 # read line2; 
	  
	#  echo "$line1, $line2"; 
	  
# done < record.txt


# count = expr $count+20;


#for x in {1..10}
#do
#echo $x
#done 

for x in {1..10}
do
read linex
echo $linex
done < record.txt


NUMOFLINES=$(wc -l < "record.txt")  # get last line number value in file - length of file

for (( i = 0; i <= NUMOFLINES; i += 20 )) 
{
	for x in {1..560}  # window of first 560 samples 
	{
		record.txt[x+i] > temp_file.txt  # write samples to window temporary file
	}
	
	for a in {1..140}  # first quarter (1-140) of 560 window
	{
		temp_file.txt > fq_file.txt
	}
	
	for c in {280..420}  # third quarter (280-420) of 560 window
	{
		temp_file.txt > tq_file.txt
	}
	
	for d in {420..560}  # fourth quarter (420-560) of 560 window
	{
		temp_file.txt > lq_file.txt
	}
	
	# First Quarter Mean HRV Calculation:
	fq_file.txt | get_hrv >> meanHRV.txt  # get mean HRV value
	
	# Third Quarter pNN50 and RMSSD Calculation:
	
	tq_file.txt | get_hrv >> pNN50.txt  # get pNN50 value
	# tq_file.txt | pnnlist >> pNN50.txt  # get pNN50 value
	tq_file.txt | #rMSSD >> rMSSD.txt   # get RMSSD value
	
	# Fourth Quater Mean HRV, pNN50 and RMSSD Calculation:
	lq_file.txt | #MEAN_HRV >> meanHRV.txt  # get mean HRV value
	lq_file.txt | pnnlist >> pNN50.txt      # get pNN50 value
	lq_file.txt | #rMSSD >> rMSSD.txt       # get RMSSD value
	
	# rm file.txt because > (not appended) don't need to remove file each time
	
}

# then nest above for-loop in a for loop which increments by 20 for the sliding window.. 
# Then can pipe the values to be calculated