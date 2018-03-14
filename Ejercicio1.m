% Mi RUT es 20.083.688-0

A=1 ; B=2 ; C=3 ; D=4 ; E=5 ; F=6 ; G=7 ; H=8 ; I=0

t = 0 : 0.3 : 30 ; v = exp(-((B+A)/(2*C*(D+E))) * t) .* sin(t);

subplot 121; plot(t,v); title('PLOT');
xlabel('Tiempo [seg]'); ylabel('Volts'); grid;
subplot 122; stem(t,v); title('STEM');
xlabel('Tiempo [seg]'); ylabel('Volts'); grid;