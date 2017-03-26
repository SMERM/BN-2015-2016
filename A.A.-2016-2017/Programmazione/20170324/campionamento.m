fc = 48000;
sinc = 1/fc;
winsize = 16384;
binsize = fc/winsize;

dur = 2;
t = [0:sinc:dur-sinc];
Tm = 0.008; %periodo della modulante
Fm = round((1/Tm)/binsize)*binsize;	%frequenza della modulante
msamples = round(Tm/sinc);
d_cycle = 1/8; %fa la spaziatura ogni 3
msampleHigh = 2;
squareTable = zeros(1,msamples);
squareTable(1:msampleHigh) = 1;
squareWav = zeros(size(t));
for k = 1:msamples:size(t,2)
	squareWav(k:k+msamples-1) = squareTable;
end

m = squareWav;	%modulante

figure(1)
plot(t,m)
axis([0 0.01])
print("campionamento.pdf", "-dpdf");

figure(2)

F = [0:binsize:fc-binsize];
h = hamming(winsize)';
mfft = fft(h.*m(1:winsize),winsize);
hold on 
stem(F,4*abs(mfft)/winsize);
plot(F,4*abs(mfft)/winsize);
axis([0 24000])
print("campionamento.pdf", "-dpdf");
hold off

wavwrite(p',fc,"campionamento.wav")