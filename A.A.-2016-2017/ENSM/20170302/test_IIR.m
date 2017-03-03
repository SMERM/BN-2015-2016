step = 0.01;
xlimits = [-1, 1];
w = [0:step:2*pi - step];
x = [xlimits(1):step:xlimits(2) - step];
Z = pianoz(xlimits, xlimits, step);
H = 0.5./(1 + 0.3*Z.**(-1) + 0.5*Z.**(-2));

mesh(real(Z), imag(Z), abs(H))
xlabel('X')
axis([xlimits(1) xlimits(2) xlimits(1) xlimits(2) 0 10])