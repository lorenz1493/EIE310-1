clear all;
clc;
%Mi RUT es 20.083.688-0
a=2;b=0;c=0;d=8;e=3;f=6;g=8;h=8;i=0;
B=((a+b)*c)
r=((i+e)*h)/((b+c+e)*10)
R=((i+e)*(a+c))/(b+c+e+g+h)
%Funcion EXP dececiente
n = 0:1:10; x=B*r.*n;
subplot 331; stem(n, x);
xlabel('n'); title('S. EXP decreciente'); grid
m =0:1:10; y=B*R.*m