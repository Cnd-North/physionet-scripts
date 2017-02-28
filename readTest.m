



clear;           % clear - removes all variables from workspace
close all;       % close all - closes all the open figure windows
clc;             % clears the command window and homes the cursor


T = importdata('rrlist.txt');

M = erase(T, 'N');

ss = size(M);

display(ss);

MD = zeros(100242, 1);

MD = cell2mat(M);

ss = size(M);

temp = zeros(100241, 2);

temp(1) = MD([1:end-1],:);

