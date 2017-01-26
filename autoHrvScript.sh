# Gerrit van Rensburg

# autoHrvScript uses a while loop to read in record names from a text file, 
# which can be constructed from copying and pasting the RECORD file within the database of chocie


#Let us know when the program begins execution
echo "Starting run at: `date`"

#!/bin/bash

# While loop for read text from file -name- at bottom, line by line, and save text as $line
while IFS='' read -r line || [[ -n "$line" ]]; do
    
 # Read back record name for fun before executing - to check 
    echo "Text read from file: $line"


# Run the get_hrv function, on every record name in the text file (file name below at end of loop)
# option ">> -fileName", pipelines the data striaght into a text file

	get_hrv -s -M -F "0.2 20 -x 0.4 2.0" -p "20 50" nsr2db/$line ecg >> copy_file

	#output=`eval get_hrv -s -M -F "0.2 20 -x 0.4 2.0" -p "20 50" nsr2db/$line ecg`
    #echo "$output" >> logs

# cat file > copy_file
# cat file >> "copy_file.txt"

# end of while loop, contains name of file for text to be read from -record.txt-
done < "record.txt"



#Let us know when the program terminates
echo "Program HRV Script finished with exit code $? at: `date`"