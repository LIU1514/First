%������֡��ʾ
clc
clear all
close all

[x,Fs]=wavread('1.wav');       % �����ļ�
Frame=200; Remove=100;          % ����֡����֡��
N=length(x);                    % ���ݳ���
time=(0:N-1)/Fs;                % �źŵ�ʱ��
getdata=dataF(x,Frame,Remove)';     % ��֡