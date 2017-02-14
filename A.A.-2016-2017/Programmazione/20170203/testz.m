step = 0.001;
f = 5;
limits = [-1.2 1.2];
raxis = [limits(1):step:limits(2)-step];
yc = cos(2*pi*f*raxis);
ys = square(raxis*20);

tz = transz(ys, step);

figure(1, "visible", "off");
mesh(raxis, raxis, abs(tz)/(size(raxis, 2)**2));
view([180 30])
axis([-1.1 1.1 -1.1 1.1])
xlabel("x");
ylabel("y");
zlabel("z");
caxis([0 4e13])
print("z_transform-linear.jpg", "-djpeg");

figure(2, "visible", "off");
meshc(raxis, raxis, 20*log10(abs(tz)/(size(raxis, 2)**2)));
view([180 30])
axis([-1.1 1.1 -1.1 1.1])
xlabel("x");
ylabel("y");
zlabel("z");
caxis([0 350])
print("z_transform-dB.jpg", "-djpeg");
