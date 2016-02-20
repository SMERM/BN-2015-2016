step = 0.001
t = [-pi:step:pi];
ycos = cos(t);
sycos = ycos.*ycos;
sum(sycos)*step
plot(t, sycos)