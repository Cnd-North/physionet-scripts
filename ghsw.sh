#ghsw - get_hrv Sliding Window



get_hrv -s -M -F "0.2 20 -x 0.4 2.0" -p "20 50" nsr2db/nsr001 ecg


for (( i = 0; i <= 500; i += 20 )) 
{
       x = i+30
		get_hrv -s -M -F "0.2 20 -x 0.4 2.0" -p "20 50" nsr2db/nsr001 ecg 00:00:i 00:00:x
		
		#record.txt[x+i] # > temp_file.txt  # write samples to window temporary file
	}