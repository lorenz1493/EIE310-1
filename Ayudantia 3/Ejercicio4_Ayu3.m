clear all;
close all;
clc;
n = 0:20; x = 0.9;
k = x.^n;
w = [0:1/200:1] * pi;
[X] = dtft(k,n,w);
subplot 221; plot(w/pi, abs(X)); grid
xlabel('w / Pi [rad/m]'); title('Magnitud')
subplot 222; plot(w/pi, unwrap(angle(X))/pi); grid
xlabel('w / Pi [rad/m]'); title('Angulo / Pi [rad]')