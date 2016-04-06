%DFT con finestre adiacenti e zero padding
f_c = 44100;
sinc = 1/f_c;
window_size = 777; %numero di campioni della finestra
M = window_size; %numero di zeri
bin_size = f_c/window_size;
bin_size2 = f_c/(window_size+M);
f = [-f_c/2:bin_size:f_c/2 - bin_size];
f2 = [-f_c/2:bin_size2:f_c/2 - bin_size2];
freq = 2500;
%binnum = round((freq + f_c/2)/bin_size) + 1;
w = freq*2*pi;
dur = window_size*sinc;
t = [-dur/2:sinc:dur/2 - sinc];
y = cos(w*t);
y_pad = zeros(1, window_size + M);
y_pad(floor(M/2) + 1:floor(M/2) + window_size) = y;
output = zeros(size(f));
y_anal = zeros(window_size, window_size);
%
%DFT
dft_0 = myDFT(y, f_c);
dft_1 = myDFT(y_pad, f_c);
%
%
M_0 = 2*abs(dft_0)/window_size;
M_1 = 2*abs(dft_1)/window_size;
for k = 1:window_size
	M_0_pad(k*2 - 1) = M_0(k);
	M_0_pad(k*2) = M_0(k);
end
plot(f2, M_0_pad, f2, M_1)
	axis([1000 3000])