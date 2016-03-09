%DFT con finestre adiacenti
f_c = 44100;
sinc = 1/f_c;
window_size = 77;
bin_size = f_c/window_size;
f = [-f_c/2:bin_size:f_c/2 - bin_size];
freq = 2000;
binnum = round((freq + f_c/2)/bin_size) + 1;
w = freq*2*pi;
dur = window_size*sinc;
t = [-dur/2:sinc:dur/2 - sinc];
%y = exp(i*w*t);
y = cos(w*t);
%y = sin(w*t);
output = zeros(size(f));
y_anal = zeros(window_size, window_size);
%DFT
for k = 1:window_size
	anal = exp(-i*f(k)*2*pi*t);
	y_anal(k, :) = y.*anal;
	f_sum = sum(y_anal(k, :));
	output(k) = f_sum;
end
figure(1)
plot(f, abs(output)/window_size)
figure(2)
subplot(5, 1, 1)
	plot(t, real(y_anal(binnum - 2, :)))
	axis([t(1) t(window_size) -1 1])
subplot(5, 1, 2)
	plot(t, real(y_anal(binnum - 1, :)))
	axis([t(1) t(window_size) -1 1])
subplot(5, 1, 3)
	plot(t, real(y_anal(binnum, :)))
	axis([t(1) t(window_size) -1 1])
subplot(5, 1, 4)
	plot(t, real(y_anal(binnum + 1, :)))
	axis([t(1) t(window_size) -1 1])	
subplot(5, 1, 5)
	plot(t, real(y_anal(binnum + 2, :)))	
	axis([t(1) t(window_size) -1 1])