fc = 1;
a = 0.5;
b = 1;
f = [0:0.01:fc];
h1 = a + b*exp(-i*f*2*pi);
h2 = -a + b*exp(-i*f*2*pi);
h3 = a + -b*exp(-i*f*2*pi);
h4 = -a + -b*exp(-i*f*2*pi);
subplot(2,4,1)
plot(f, abs(h1), "linewidth", 2);
title('abs; a = 0.5; b = 1')
subplot(2,4,5)
plot(f, angle(h1), "linewidth", 2);
title('angle; a = 0.5; b = 1')
subplot(2,4,2)
plot(f, abs(h2), "linewidth", 2);
title('abs; a = -0.5; b = 1')
subplot(2,4,6)
plot(f, angle(h2), "linewidth", 2);
title('angle; a = -0.5; b = 1')
subplot(2,4,3)
plot(f, angle(h3), "linewidth", 2);
title('abs; a = 0.5; b = -1')
subplot(2,4,7)
plot(f, angle(h3), "linewidth", 2);
title('angle; a = 0.5; b = -1')
subplot(2,4,4)
plot(f, angle(h4), "linewidth", 2);
title('abs; a = -0.5; b = -1')
subplot(2,4,8)
plot(f, angle(h4), "linewidth", 2);
title('angle; a = -0.5; b = -1')
print("filtro_zero.png", "-dpng")
