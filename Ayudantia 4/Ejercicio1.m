load h.txt
subplot 121;
plot(h, '.'); grid
xlabel('n');
title('h(n)');
f=0:100:400000;
M = abs(freqz(h,1,f,101000));
subplot 122;
semilogy(f/500, M); grid;
axis([0 200 0.000001 10]);
xlabel('f[kHz]');
title('Mag[H(f)]');