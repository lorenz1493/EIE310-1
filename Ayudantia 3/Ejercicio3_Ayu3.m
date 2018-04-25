clear all;
close all;
clc;
n = 0:10; x = 0.4;
k = x.^n;
w = [0:1/200:1] * pi;
[X] = dtft(k,n,w)