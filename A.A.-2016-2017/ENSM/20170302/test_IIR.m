step = 0.01;
xlimits = [-1, 1];
w = [0:step:2*pi - step];
x = [xlimits(1):step:xlimits(2) - step];
Z = pianoz(xlimits, xlimits, step);
%H = 1./(1 + 0.3*Z.**(-1) + 0.5*Z.**(-2));

polo1 = -0.15000 +i*0.69101;
polo2 = -0.15000 -i*0.69101;

numer = Z.**(2);
denom = (Z.-polo1).*(Z.-polo2);
H = numer./denom;

mesh(real(Z), imag(Z), abs(H))
xlabel('X')
axis([xlimits(1) xlimits(2) xlimits(1) xlimits(2) 0 10])