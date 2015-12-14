%Plot di parte reale ed immaginaria
t = [0:0.001:1]; %io sono un commento
a = e; %base scelta random
f = 3; %frequenza
w = 2*pi*f;
z = a.^(i*w*t);
subplot(2, 1, 1); %due plot in uno: specifico il primo plot
plot(t, real(z));
subplot(2,1,2); %specifico il secondo plot
plot(t, imag(z))
