step = 0.01;
f = 5;
limits = [-1.5 1.5];
raxis = [limits(1):step:limits(2)-step];
y = cos(2*pi*f*raxis);

%h = hanning(size(y, 2))';
%y = y.*h;

tz = transz(y, step);

mesh(raxis, raxis, abs(tz))
