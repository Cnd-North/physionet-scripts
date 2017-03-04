# Get RR interval for stress test
#
#
#
#/Users/gerritvanrensburg/bin
#


# Uses Physio-net ann2rr function to grab record and place RR interval into a file RRinterval.txt  --HOWEVER -- Found I could not use this with pnnlist as it was missing the NN interval information -- pNNx uses ann2rr and pnnlist together :D

ann2rr -r 'nsr2db/nsr001' -a 'ecg' | pnnlist >> RRinterval.txt


# Uses Physio-net pNNx function to print each unique NN interval increment in milliseconds along with percentage of intervals greater than that value 


pNNx -r nsrdb/16265 -a atr >> pnn.txt


# Uses rrlist to convert annotation file into RR interval

 rrlist 'atr'  'nsrdb/16265'  >> rrList.txt
 
 
 # chmod makes rrList.txt executable 
 chmod +x rrList.txt
 
 
 # Uses Physio-net rrList function to grab record and place RR interval and pipeline it into pnnlist function and then store the information in RRpNN.txt
 rrlist 'atr'  'nsrdb/16265' | pnnlist >> RRpNN.txt