% Stress Detection - Gerrit van Rensburg
% Dr. Xiaodai Dong Lab - Winter 2017





%% Clear all variables and saved tables 
clear;           % clear - removes all variables from workspace
close all;       % close all - closes all the open figure windows
clc;             % clears the command window and homes the cursor



%% Generate text file using rrlist function prodived by Physio-Net tools via temrinal
% example code in terminal:
%   $ rrlist 'atr'  'nsrdb/16265'  > rrList.txt
%   $ rrlist 'atr' 'afdb/00735' > AF00735.txt



%% Import data from text file.
% Script for importing data from the following text file:
%
%    /Users/gerritvanrensburg/rrList.txt
%
% To extend the code to different selected data or a different text file,
% generate a function instead of a script.

% Auto-generated by MATLAB on 2017/02/21 19:16:07

%% Initialize variables.

 filename = '/Users/gerritvanrensburg/DataFiles/rrList.txt';
% filename = '/Users/gerritvanrensburg/CHF03.txt';
delimiter = ' ';

disp(['Reading from filename: ', filename]);
%% Format for each line of text:
%   column1: double (%f)
% For more information, see the TEXTSCAN documentation.
formatSpec = '%f%*s%[^\n\r]';

%% Open the text file.
fileID = fopen(filename,'r');

%% Read columns of data according to the format.
% This call is based on the structure of the file used to generate this
% code. If an error occurs for a different file, try regenerating the code
% from the Import Tool.
dataArray = textscan(fileID, formatSpec, 'Delimiter', delimiter, 'MultipleDelimsAsOne', true, 'TextType', 'string', 'EmptyValue', NaN,  'ReturnOnError', false);

%% Close the text file.
fclose(fileID);

%% Post processing for unimportable data.
% No unimportable data rules were applied during the import, so no post
% processing code is included. To generate code which works for
% unimportable data, select unimportable cells in a file and regenerate the
% script.

%% Create output variable
rrList = [dataArray{1:end-1}];
%% Clear temporary variables
clearvars filename delimiter formatSpec fileID dataArray ans;



Count = 1;

Size_L = size(rrList); % Getting the size of matrix T which has our RR interval

Result = zeros(ceil(Size_L(1)/20)-560, 1);  % Initializing the size of Result Matrix

% Convert rrList (seconds/beat) to beats per second by taking the inverse
rrInverse = ( (rrList) .^-1) ; 

bpm = (rrInverse*60);

%% Matrices for mean Heart Rate Data

% From RR Intervals
FQ = zeros(ceil(Size_L(1)/20), 1);  % Initializing the size of First Quarter Matrix for mean heart rate - FQ

LQ = zeros(ceil(Size_L(1)/20), 1);  % Initializing the size of Last Quarter Matrix for mean heart rate - LQ

mH_C = zeros(ceil(Size_L(1)/20), 1);

mH_False = zeros(ceil(Size_L(1)/20), 1);




% From Heart Rate - beats per minute (inverted and multiplied by 60 RR Interval)

bpm_FQ = zeros(ceil(Size_L(1)/20), 1);  % Initializing the size of First Quarter Matrix for mean heart rate - FQ

bpm_LQ = zeros(ceil(Size_L(1)/20), 1);  % Initializing the size of Last Quarter Matrix for mean heart rate - LQ

bpm_C = zeros(ceil(Size_L(1)/20), 1);

bpm_False = zeros(ceil(Size_L(1)/20), 1);

% Initializing the size of mean BPM Matrix over the 560 interval window
meanBPM = zeros(ceil(Size_L(1)/20)-560, 1);  






% FQ = zeros(ceil(Size_L(1)/20)-140, 1);  % Initializing the size of First Quarter Matrix for mean heart rate - FQ
% 
% LQ = zeros(ceil(Size_L(1)/20)-140, 1);  % Initializing the size of Last Quarter Matrix for mean heart rate - LQ
% 
% mHC = zeros(ceil(Size_L(1)/20)-140, 1);  % Initializing the size of meanHR Compare Matrix - mHC




%% Get Pioncar� List to calculate N-N interval 
poincare =[rrList(1:length(rrList)-1) rrList(2:end)];

nnInterval = poincare(:,1)-poincare(:,2) ; 

% abs(nnInterval)

% pNN50 = sum(nnInterval>0.050)


%% Matrices for RMSSD Data


RMSSD_TQ = zeros(ceil(Size_L(1)/20), 1);  % Initializing the size of Third Quarter Matrix for RMSSD - RMSSD_TQ

RMSSD_LQ = zeros(ceil(Size_L(1)/20), 1);  % Initializing the size of Last Quarter Matrix for RMSSD - RMSSD_LQ



% RMSSD_TQ = zeros(ceil(Size_L(1)/20)-140, 1);  % Initializing the size of Third Quarter Matrix for RMSSD - RMSSD_TQ
% 
% RMSSD_LQ = zeros(ceil(Size_L(1)/20)-140, 1);  % Initializing the size of Last Quarter Matrix for RMSSD - RMSSD_LQ





% RMSSD Comparison Matrix - RMSSD_C
RMSSD_C = zeros(ceil(Size_L(1)/20), 1);

RMSSD_False = zeros(ceil(Size_L(1)/20), 1);



 % ***Had increase size by 1 unit from -140 to -139 for it match the others
 % which is weird.. ***
% mHC = zeros(ceil(Size_L(1)/20)-139, 1);  % Initializing the size of meanHR Compare Matrix - mHC



%% Matrices for pNN50 Data


PNN_TQ = zeros(ceil(Size_L(1)/20), 1);  % Initializing the size of Third Quarter Matrix for PNN - PNN_TQ

PNN_LQ = zeros(ceil(Size_L(1)/20), 1);  % Initializing the size of Last Quarter Matrix for PNN - PNN_LQ






% PNN Comparison Matrix - PNN_C
PNN_C = zeros(ceil(Size_L(1)/20), 1);

PNN_False = zeros(ceil(Size_L(1)/20), 1);

%% Sliding window of 560 unit wide, and sldies 20 units at time, calculating
% the mean inside the window
for(X = 1:20:Size_L(1)-560)

    Result(Count,1) = mean(rrList(X:X+560)); % Calculates mean RR over 560 window
    
    meanBPM(Count,1) = mean(bpm(X:X+560));   % Calculates mean BPM over 560 window
    
    
    %% **!!*!*! These TWO need to UPDATED to calculate mean Heart Rate -- NOT -- mean RR *!*!@*!
    FQ(Count,1) = mean(rrList(X:X+140));   % Calculates meanHR for First Quarter
    
    LQ(Count,1) = mean(rrList(X+420:end)); % Calculates meanHR for Last Quarter
    
    %% Updated of the above two based on beats per minute
    
    bpm_FQ(Count,1) = mean(bpm(X:X+140));   % Calculates meanHR for First Quarter
    
    bpm_LQ(Count,1) = mean(bpm(X+420:end)); % Calculates meanHR for Last Quarter
    
    
    %% RMSSD Matrices
    
    RMSSD_TQ(Count,1) = sqrt(( sum( (nnInterval(X+280:X+420).^2) ) * ( 1./ ( length(nnInterval(X+280:X+420) ) -1) ) ) ) ;
    
    RMSSD_LQ(Count,1) = sqrt(( sum( (nnInterval(X+420:end).^2) ) * ( 1./ ( length(nnInterval(X+420:end) ) -1) ) ) ) ;
    
    
    
    %% PNN Matrices
    
    PNN_TQ(Count,1) = sumabs(abs(nnInterval(X+280:X+420))>0.050) / (length(nnInterval(X+280:X+420))) ;
    
    PNN_LQ(Count,1) = sumabs(abs(nnInterval(X+420:end))>0.050) / (length(nnInterval(X+420:end))) ;
    
    
%        %% Insert Compare Functions here
%     
%     % Compare mean RR Interval
%     mH_C(Count,1) = ( tempLQ(Count) > FQ(Count) );
%     
%     % False Postive to compare with mH_C above
%     mH_False(Count,1) = ( FQ(Count) > tempLQ(Count) );
%     
%     
%     % Compare mean Heart Rate in beats per minute
%     bpm_C(Count,1) = ( temp_bpm_LQ(Count) > bpm_FQ(Count) );
%   
%     % False Postive to compare with bpm_C above
%     bpm_False(Count,1) = ( bpm_FQ(Count) > temp_bpm_LQ(Count) );
%     
%     
%     % Compare RMSSD
%     RMSSD_C(Count,1) = ( tempRMSSD_TQ(Count) > RMSSD_LQ(Count) );
%     
%     % False positive to compare with RMSSD_C above
%     RMSSD_False(Count,1) = ( RMSSD_LQ(Count) > tempRMSSD_TQ(Count) );
%     
%     
%     
%      % mHC(Count,1) = ( (LQ*1.05) > FQ ) % Determine if mean heart rate qualifies for stress
%      % 
%     
%     % Comapre PNN 
%     PNN_C(Count,1) = ( tempPNN_TQ(Count) > RMSSD_LQ(Count) );
%     
%     % False Positive to compare with PNN_C above
%     PNN_False(Count,1) = ( tempPNN_TQ(Count) > RMSSD_LQ(Count) ); 

    
     
    %% Check Code - Looks at stress event occured - Positive Value = Stress, Negative = No-Stress
    
%     check = tempLQ - FQ
%     s=sign(check)
%     ipositif=sum(s(:)==1)
%     inegatif=sum(s(:)==-1)
    
  


   
    
    
    %% Take compare values and then plot if stress even has occured or not
    
    
    
    
    
    %% Increment count to go next row for each of matrices inside this for loop
    Count = Count + 1;
end


%% Generate Comparison Values


% For comparion between LQ and FQ
tempLQ = LQ*1.05;


% For comparion between LQ and FQ
temp_bpm_LQ = LQ*1.05;


% For comparion between RMSSD_TQ and RMSSD_LQ
tempRMSSD_TQ = RMSSD_TQ*1.09;


% For comparion between PNN_TQ and PNN_LQ
tempPNN_TQ = PNN_TQ*1.09;




    %% Insert Compare Functions here
    
    % Compare mean RR Interval
    mH_C = ( tempLQ > FQ );
    
    
    % False Postive to compare with mH_C above
    mH_False = ( FQ > tempLQ );
    
    
    % Compare mean Heart Rate in beats per minute
    bpm_C = ( temp_bpm_LQ > bpm_FQ );
  
    % False Postive to compare with bpm_C above
    bpm_False = ( bpm_FQ > temp_bpm_LQ );
    
    
    % Compare RMSSD
    RMSSD_C = ( tempRMSSD_TQ > RMSSD_LQ );
    
    % False positive to compare with RMSSD_C above
    RMSSD_False = ( RMSSD_LQ > tempRMSSD_TQ );
    
    
    
     % mHC(Count,1) = ( (LQ*1.05) > FQ ) % Determine if mean heart rate qualifies for stress
     % 
    
    % Comapre PNN 
    PNN_C = ( tempPNN_TQ > RMSSD_LQ );
    
    % False Positive to compare with PNN_C above
    PNN_False = ( tempPNN_TQ > RMSSD_LQ );



    StressEvent = (mH_C .* RMSSD_C .* PNN_C);
    
    

% get the total sum of all true events to count stress events
%  mH_C = sum(mH_C(:))     
%  RMSSD_C = sum(RMSSD_C(:))   
%  PNN_C = sum(PNN_C(:))
% 
%  mH_False = sum(mH_C(:))     
%  RMSSD_False = sum(RMSSD_C(:))   
%  PNN_False = sum(PNN_C(:))

%% pNNx -- pNN50
 
pNN50 = sumabs(abs(nnInterval)>0.050) / (length(nnInterval))
 
 % I think the formaul cals for absolute value, so dropped the or statement and included the abs value 
 % | nnInterval<-0.050)

pNN20 = sumabs(abs(nnInterval)>0.020) / (length(nnInterval))


%% Average NN 
AVNN = mean(rrList)

%% Square Root of the mean of the squares of differences between adjacent NN intervals
RMSSD = sqrt(( sum((nnInterval).^2)) * (1./(length(nnInterval)-1)))



meanBPM = mean(meanBPM)



%% Not sure about this code.. need to calculate mean for forst 140 (1..140) and last 140 (420..560)


% for(X = 1:20:Size_L(1)-560)
% 
%     FQ(Count,1) = mean(rrList(X:X+140));
%     Count = Count + 1;
% end
