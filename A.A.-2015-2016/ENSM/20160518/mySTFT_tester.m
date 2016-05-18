%STFT tester
f_c = 44100;
sinc = 1/f_c;
window_size = 777; %numero di campioni della finestra
M = window_size; %numero di zeri
l_window_size = window_size + M;
overlap = 4;
hop_size = round(l_window_size/overlap);
bin_size = f_c/l_window_size;
f = [-f_c/2:bin_size:f_c/2 - bin_size];
freq = 2500;
w = freq*2*pi;
dur = window_size*sinc*10;
t = [-dur/2:sinc:dur/2 - sinc];
y = cos(w*t);
output = mySTFT(y, window_size, overlap, f_c);
%
%
t_hop = [-dur/2:hop_size_sinc:dur/2 - hop_size_sinc];
magn = 2*abs(output)/window_size;
magn_db = 20*log10(magn);
mesh(t_hop, f, magn_db);
