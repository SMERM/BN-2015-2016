fc = 1;
a = 1/2;
b = a;
f = [0:0.01:fc];
h = a + b*exp(-i*f*2*pi);
subplot(2,1,1)
plot(f, abs(h), "linewidth", 2);
subplot(2,1,2)
plot(f, angle(h), "linewidth", 2);
print("filtro_zero.png", "-dpng")
