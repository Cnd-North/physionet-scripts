% rr2pp Plot - Gerrit van Rensburg
% Dr. Xiaodai Dong Lab - Winter 2017


clear;           % clear - removes all variables from workspace
close all;       % close all - closes all the open figure windows
clc;             % clears the command window and homes the cursor


% Write function to geenral RR invterval list -rrlist.c > text file



% Two part Poincaré Plot function
%   Part A - Generate Points (ex. P1 = RR1, RR2, P2 = RR2, RR3, P3 = RR3,
%   RR4)
%   Part B - Plots these points 


% Part A



% T = importdata('rrlist.txt');

% T = csvread('rrList.txt', 100241, 0);

% TT = readtable('rrList.txt');      % Make a table T from the RR interval list from function 1

% A = table2array(T);


Count = 1;                        % Initialize a count variable

Size_T = size(T);                 % Getting the size of matrix T which has our RR interval


% M2D = zeros(ceil(Size_T(1)), 1);
% M2D = zeros(ceil(Size_T(1))-1, 2);  % Initializing the size of 2D Matrix with size one less than the rrList


% For loop to reconstruct a 1D list for reshaping into a 2D matrix for the
% Poincaré Plot

% for(X = 1:2:Size_T(1)-1)  % for loop - sliding window of 2 units '1:2' until end of list '(Size(T)-1)'
% 
%    size(M2D)
%    size(T)
%    
%    sld = Size_T(1)-1;
%    
%    display('Sld size:');
%    display(size(sld));
%    
%    display('T.Var1 2: Size_T size:');
%    display(size(T.Var1(2:Size_T(1))));
%    
%    display('M2D size:')
%    display(size(M2D)); 
  
  %  M2D(Count,1) = T.Var1(1:100241);
   
   % MD = repmat(T, [100242,1]);
    
   
   
    % M2D = sparse([]);
    
    % In an assignment  A(I) = B, the number of elements in B and I must be the same.
    % For M2D (Count) = T.Var2(1:sld);
    
    % M2D(Count,1) = T.Var1(1:Size_T(1));
    % M2D(Count,2) = T.Var1(2:Size_T(1));
   
   
   
    % M2D(Count,1) = T.Var1(2:end);                 % T.Var1(X:Size_T(1)-2);
    % M2D(Count,2) = T.Var1(2:end);                 % T.Var1(2:Size_T(1)-1);
    
     % Count = Count + 1;
%     
% end



% MD = reshape(T, [50121,2])
MD = reshape(T, [100242,1]);
MMD = erase(MD, 'N');

M2D = zeros(100241, 2);

M2D(1) = MMD(1:100240);
M2D(2) = MMD(2:100241);