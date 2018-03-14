% Mi RUT es 

A=2 ; B=0 ; C=0 ; D=8 ; E=3 ; F=6 ; G=8 ; H=8 ; I=0 ;

t = 0 : 0.3 : 30 ; v = exp(-((B+A)/(2*C*(D+E))) * t) .* sin(t);

subplot 121; plot(t,v); title('PLOT');
xlabel('Tiempo [seg]'); ylabel('Volts'); grid;
subplot 122; stem(t,v); title('STEM');
xlabel('Tiempo [seg]'); ylabel('Volts'); grid;