%语音分帧显示
clc
clear all
close all

[x,Fs]=wavread('1.wav');       % 读入文件
Frame=200; Remove=100;          % 给出帧长和帧移
N=length(x);                    % 数据长度
time=(0:N-1)/Fs;                % 信号的时间
getdata=dataF(x,Frame,Remove)';     % 分帧