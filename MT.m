clear;
close all;
clc;

T = readtable('rrList.txt');
Count = 1;

Size_T = size(T); % Getting the size of matrix T which has our RR interval

Result = zeros(ceil(Size_T(1)/20)-560, 1);  % Initializing the size of Result Matrix



% Sliding window of 560 unit wide, and sldies 20 units at time, calculating
% the mean inside the window
for(X = 1:20:Size_T(1)-560)

    Result(Count,1) = mean(T.Var1(X:X+560,1));
    Count = Count + 1;
end

G = zeros(Size_T(1),1);

for(X = 1:Size_T(1)-1)
    
   % G(X) = T.Var1(X+1) - T.Var1(X);
    G(X) = T.Var1(X) - T.Var1(X+1);
end

RMSSD = sqrt (sum((G.^2))/(length(G)-1) );

SSS = sqrt (sum(G.^2));


 
% RMSSD
% RMSSD=sqrt(sum(((mean(odstepRR)-odstepRR).^2))/length(odstepRR-1));
% set(handles.rmssd,'string',num2str(RMSSD*1000)); % mnozymy przez 1000 bo jest w ms
%  

