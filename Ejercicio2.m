fc = 200;
FC = 250;
Fs = 1000; 
N = 30;
fim = 0;
fmax = 500;
ml = 1e-6;

wn = [2*fc/Fs,2*FC/Fs];

hn = fir1(N-1,wn,'bandpass',hanning(N));
hm = fir1(N-1,wn,'bandpass',hamming(N));
k = fir1(N-1,wn,'bandpass',kaiser(N,10));

f = [fmin:fmax];

Hhn = freqz(hn,1,f,Fs);
Hhm = freqz(hm,1,f,Fs);
Hk = freqz(k,1,f,Fs);

subplot 411; semilogy(h,N)
subplot 412; semilogy(f,abs(Hhn))
axis([fmin fmax 1e-6 1.1])
xlabel('f[Hz]'); title('Mag(H)')
subplot 413; semilogy(f,abs(Hhm))
subplot 414; semilogy(f,abs(k))

