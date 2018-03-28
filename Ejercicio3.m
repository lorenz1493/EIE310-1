clear all;
clc;
%Mi RUT es 14.673.879-6
a=2;b=6;c=9;d=8;e=8;f=7;g=8;h=3;i=3;
B=((a+b)*c)
r=((i+e)*h)/((b+c+e)*10)
R=((i+e)*(a+c))/(b+c+e+g+h)
%Funcion EXP dececiente
n = 0:1:10; x=B*r.^n;
subplot 331; stem(n, x);
xlabel('n'); title('S. EXP decreciente'); grid
m =0:1:10; y=B*R.^m;
%Funcion EXP ceciente
subplot 332; stem(m, y);
xlabel('m'); title('S. EXP creciente'); grid
%Funcion EXP compleja
w=[-20:1:20]; q=-((b+c+1)/60)+(((a*h*d)+1)/60)*j; z=exp(q*w);
subplot 333; stem(w, real(z)); title('Parte real'); xlabel('w')
subplot 334; stem(w, imag(z)); title('Parte imag'); xlabel('w')
subplot 335; stem(w, abs(z)); title('Magnitud'); xlabel('w')
subplot 336; stem(w, (180/pi)*angle(z)); title('Fase[*]'); xlabel('w')
%Funcion sinusoidal
j=[0:1:30];
u=3*cos(2*pi*((2+d+f)/90)*j*pi/3);
subplot 337; stem(j, u);
xlabel('j'); title('S. sinusoidal'); grid
%Funcion impulso
o=[-b:b];
p=[(o-a)==0];
subplot 338; stem(o, p); title('S. impulso'); xlabel('o'); grid
%Funcion escalon
k=[-f:f];
K=[(k-a)>=0];
subplot 339; stem(k, K); title('S. escalon');  xlabel('k'); grid