close all;
clear;
clc;

% sf =  sourcefile;
% po = position;
% zr = zigbee communicatoin range;
% nr = network range;
% wr = wifi communicatoin range;
% zt = zigbee routing table;
% wt = wifi routing table;
% zq = zigbee link quality deploy
% wq = wifi link quality deploy
% zw = zigbee wake duration
% zs = zigbee sleep druatoin
% ww = wifi work duration
% wf = wifi traffic
% mq = mean of link quality;
% sq = std of link quality;
    
[sf, po, nr, zr, wr, zt, wt, zq, wq, zw, zs, ww, wf, mq, sq] = setparameter(1);

enFdWiFiTraffic = 0;
enFdWiFiDistance = 0;
enFdDutyCycle = 0;


%% evaluation for small scale: fd vs wifi traffic
if enFdWiFiTraffic == 1
    wf1 = 0.2:0.05:0.9;
    [eva1, fig1] = eva_small_fd_wifitraffic(sf, zq, wq, zw, zs, ww, wf1);
end

%% evaluation for small scale: fd vs distance of wifi to wifi
if enFdWiFiDistance == 1

end

%% evaluation for small scale: fd vs duty cycle of zigbee
if enFdDutyCycle == 1
    dc = 0.01:0.01:0.1;
    [eva1, fig1] = eva_small_fd_dutycycle(sf, zq, wq, zw, dc, ww, wf);
end