%STFT con finestre adiacenti e zero padding
%
function output = mySTFT(y, window_size, overlap, f_c)
sinc = 1/f_c;
M = window_size; %numero di zeri
l_window_size = window_size + M;
hop_size = round(l_window_size/overlap);
dur = size(y, 2)/f_c;
output = zeros(l_window_size, f_c*dur/hop_size);
h = hamming(window_size)'; 
%
% STFT
n = 1;
hop_size_sinc = hop_size/f_c;
 for k = 1:hop_size:dur*f_c - (2*hop_size);
     y_pad = zeros(1, l_window_size);
 	 y_pad(floor(M/2) + 1:floor(M/2) + window_size) = y(k:k+window_size-1).*h;
 	 output(:,n) = myDFT(y_pad, f_c)';
 	 n += 1;
 end
end