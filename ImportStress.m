

%% Clear all variables and saved tables 
clear;           % clear - removes all variables from workspace
close all;       % close all - closes all the open figure windows
clc;             % clears the command window and homes the cursor






%% Import data from text file.
% Script for importing data from the following text file:
%
%    /Users/gerritvanrensburg/rrList.txt
%
% To extend the code to different selected data or a different text file,
% generate a function instead of a script.

% Auto-generated by MATLAB on 2017/02/21 19:16:07

%% Initialize variables.
filename = '/Users/gerritvanrensburg/rrList.txt';
delimiter = ' ';

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





poincare =[rrList(1:length(rrList)-1) rrList(2:end)];

% Plot Poincare Plot- First Row Column1 (:,1) and First Row Column2 (:,2) 
plot(poincare(:,1),poincare(:,2), '*');