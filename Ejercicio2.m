%Mi RUT es 

A=2 ; B=0 ; C=0 ; D=8 ; E=3 ; F=6 ; G=8 ; H=8 ; I=0 ;

%RESPUESTA ESCALON FILTRO IIR
%y(n) = 0.1 x(n) + 0.9 y(n-1)
vi = (H*A); %voltaje de entrada
a = (D+E)/10; %cte del filtro
dt = 10e-3; %1/100 HZ = 10 mseg
t(1) = 0; %indice 1 => t=0
vf(1) = 0; %indice 1 => t=0
for i = 2:41;
    t(i) = (i-1) * dt;
    vf(i) = (1-a) * vi + a * vf(i-1);
end
close; stem(t,vf); %grafico
xlabel('seg'); grid;