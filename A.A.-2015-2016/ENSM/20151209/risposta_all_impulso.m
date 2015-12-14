sz = 1000;
x = zeros(1, sz); %la funzione zeros crea un vettore di zeri;
x(round(sz/2)) = 1;
y = zeros(size(x)); %creo un vettore di uscita grande quanto x;
a = 1/2;
b = a;
for k=[2:size(x, 2)]
	y(k) = a*x(k) + b*x(k-1);
end;
subplot(2, 1, 1)
	stem(x)
		axis([0 sz 0 1.2]) %array di quattro valori [x_min x_max y_min y_max]
subplot(2, 1, 2)
	stem(y)
		axis([0 sz 0 1.2])