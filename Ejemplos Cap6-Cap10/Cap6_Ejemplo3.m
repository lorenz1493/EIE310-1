load h.txt
subplot 221;
plot(h, '.'); grid
xlabel('n');
title('h(n)');
f = 0 : 100 : 200000;
M = abs(freqz(h,1,f,176400));
subplot 223;
semilogy(f/1000, M); grid;
axis([0 200 0.000001 10]);
xlabel('f[kHz]');
title('Mag[H(f)]');