clear all
close all
clc

fc = 200;
FC = 250;
Fs = 1000; 
N = 1001;
fmin = 0;
fmax = 500;
ml = 1e-6;

wn = [2*fc/Fs,2*FC/Fs];

hn = fir1(N-1,wn,'bandpass',hanning(N));
hm = fir1(N-1,wn,'bandpass',hamming(N));
k = fir1(N-1,wn,'bandpass',kaiser(N,10));

f = [fmin:(fmax-fmin)/1023:fmax];
n = [1 : N]; 

Hhn = freqz(hn,1,f,Fs);
Hhm = freqz(hm,1,f,Fs);
Hk = freqz(k,1,f,Fs);

subplot 411; stem(n, hn); grid; xlabel('n'); title('h(n)')
axis([0 1002 -0.2 0.2])
subplot 412; semilogy(f,abs(Hhn));grid
axis([fmin fmax 1e-8 5])
xlabel('f[Hz]'); title('HANNING')
subplot 413; semilogy(f,abs(Hhm));grid
axis([fmin fmax 1e-8 5])
xlabel('f[Hz]'); title('HAMMING')
subplot 414; semilogy(f,abs(Hk));grid
axis([fmin fmax 1e-8 5])
xlabel('f[Hz]'); title('KAISER')