w = [0 : 0.001 : 1] * pi;
MT = 1 ./ sqrt(1.81 - 1.8*cos(w));
AT = - (180/pi) * atan((0.9 * sin(w)) ./ (1 - (0.9 * cos(w))));
n = 0 : 20; h = 0.9 .^ n;
H = dtft(h, n, w);
MN = abs(H); AN = (180/pi) * angle(H);
subplot 221; plot(w/pi, MT, 'b', w/pi, MN, 'r');
title('MAGNITUD Azul: te�rica Rojo: num�rica')
xlabel('w / Pi [rad/m]'); grid;
subplot 222; plot(w/pi, AT, 'b', w/pi, AN, 'r');
title('ANGULO [�] Azul: te�rico Rojo: num�rico')
xlabel('w / Pi [rad/m]'); grid;