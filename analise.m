%definindo a transformada
b = [1/2];
a = [1];
w = linspace(0,2*pi,1000);
[H,w] = freqz(b,a,w);

%plotando a resposta em frequencia da transformada
figure;
subplot(2,1,1);
plot(w,abs(H));
title('Magnitude da resposta em frequência');
subplot(2,1,2);
plot(w,angle(H));
title('Fase da resposta em frequência');

zplane(b,a);

w = linspace(0, 2*pi, 1000);
H = 1./(1 - 0.5*exp(-1j*w));
figure;
subplot(2,1,1);
plot(w, abs(H));
title('Magnitude da resposta em frequência');
subplot(2,1,2);
plot(w, angle(H));
title('Fase da resposta em frequência');
