%DFT
function F = myDFT(x, f_c)

sinc = 1/f_c;
window_size = size(x, 2);
bin_size = f_c/window_size;
f = [-f_c/2:bin_size:f_c/2 - bin_size];
dur = window_size*sinc;
t = [-dur/2:sinc:dur/2 - sinc];
F = zeros(size(f));
dft_buff = [x(floor(window_size/2) + 1: window_size) x(1:floor(window_size/2))];
for k = 1:window_size
	anal = exp(-i*f(k)*2*pi*t);
	y_anal = dft_buff.*anal;
	f_sum = sum(y_anal);
	F(k) = f_sum;
end

end