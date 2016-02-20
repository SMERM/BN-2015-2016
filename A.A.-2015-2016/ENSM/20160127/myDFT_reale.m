%DFT
f_c = 44100;
sinc = 1/f_c;
window_size = 777;
bin_size = f_c/window_size;
f = [-f_c/2:bin_size:f_c/2 - bin_size];
freq = f(50 + round(window_size/2));
w = freq*2*pi;
dur = window_size*sinc;
t = [-dur/2:sinc:dur/2 - sinc];
%y = exp(i*w*t);
y = cos(w*t);
%y = sin(w*t);
output = zeros(size(f));
for k = 1:window_size
	anal = exp(-i*f(k)*2*pi*t);
	y_anal = y.*anal;
	f_sum = sum(y_anal);
	output(k) = f_sum;
end
plot(f, abs(output)/window_size)