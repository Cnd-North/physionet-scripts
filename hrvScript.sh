# Gerrit van Rensburg - HRV Script

#Let us know when the program begins execution
echo "Starting run at: `date`"

# Access the Normal Sinus Rhythm RR Interval Database: nsr2db 
# Access record: nsr001
# To get HRV data 
# -s option, short term stats of REC: NN/RR AVNN SDNN RMSSD PNN : TOTPWR VLF LF HF LF/HF
# -S option, plot HRV results on screen
# -M option, output statistics in msec rather than sec
# -f option, "filt hwin", filter outliers


get_hrv -s -M -F "0.2 20 -x 0.4 2.0" -p "20 50" nsr2db/nsr001 ecg


# Plot selected portions of the data
# From start: 00:00:00 to end: 01:00:00 - First hour of data
# -P -value- option, where prints -value- hours per page - Maximum of 8 lines per page
# Here -P 8 will print 8 hours per page (1 hour per line)

  plt_rrs -P 8 nsr2db/nsr001 ecg 00:00:00 02:00:00


# Plot the same data, but -p option
# -p option, Plots RR interval as individual points
   plt_rrs  -P 1 -p nsr2db/nsr001 ecg 00:00:00 01:00:00 plt 0 2 -wb 2 -t "Window 2"


# Plot the same data, but with -N, and -F options
# -N option, plots NN intervals only, 
# omitting intervals that are not bounded by normal sinus beats at both ends
# -F option, filters outliers, here -F "0.2 20 -x 0.4 2.0"
# Intervals less than 0.4 sec or greater than 2.0 seconds are excluded
# Next, using a window of 41 intervals (20 intervals on either side of the central point), 
# the average over the window is calculated excluding the central interval,
# If the central interval lies outside 15% (0.15) of the window average this interval,
# is flagged as an outlier and excluded
  plt_rrs  -P 1 -N -F "0.15 20 -x 0.4 2.0" nsr2db/nsr001 ecg 00:00:00 01:00:00 plt 0 1 -wb 1 -t "Window 1"










#Let us know when the program terminates
echo "Program HRV Script finished with exit code $? at: `date`"


