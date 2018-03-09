close all;
clear;
clc;

number = 10;
range = 5;
scale = 2;
meanlq = 0.8;
stdlq = 0.15;
% position = genposition(number,range);

position = [
    1.0000    0.2973    0.0083;
    2.0000    0.7169   -0.3479;
    3.0000    2.1052   -1.2682;
    4.0000    0.3296    1.5400;
    5.0000   -0.6591   -2.3215;
    6.0000   -0.7562    0.6589;
    7.0000    0.1327    0.5194;
    8.0000   -0.2673   -1.3689;
    9.0000   -1.5335   -1.4166;
   10.0000    0.3235   -1.0375];

% routetable = [
%      0     1     0;
%      0     2     0;
%      0     2     3;
%      0     4     0;
%      0     6     0;
%      0     7     0;
%      0     8     0;
%      0     8     5;
%      0     8     9;
%      0    10     0;
%      0    10     3;
%      0    10     5;
%      0    10     9];
 
lqd = linkqualitydeploy(position, scale, meanlq, stdlq);

 