fc = 1;
a1 = 0.3;
b1 = 0.7;
a2 = 0.7;
b2 = 0.3;
f = [0:0.01:fc];
h1 = a1 + b1*exp(-i*f*2*pi);
h2 = a2 + b2*exp(-i*f*2*pi);
subplot(2,2,1)
plot(f, abs(h1), "linewidth", 2);
title('abs; a = 0.3; b = 0.7')
subplot(2,2,3)
plot(f, angle(h1), "linewidth", 2);
title('angle; a = 0.3; b = 0.7')
subplot(2,2,2)
plot(f, abs(h2), "linewidth", 2);
title('abs; a = 0.7; b = 0.3')
subplot(2,2,4)
plot(f, angle(h2), "linewidth", 2);
title('angle; a = 0.7; b = 0.3')
print("filtro.pdf", "-dpdf")
