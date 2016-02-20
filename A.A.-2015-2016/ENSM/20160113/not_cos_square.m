step = 0.001;
f1 = 0.1;
f2 = 7;
t = [-100*pi:step:100*pi];
ycos1 = cos(t*f1);
ycos2 = cos(t*f2);
ycos = ycos1.*ycos2;
sum(ycos)*step
plot(t, ycos)