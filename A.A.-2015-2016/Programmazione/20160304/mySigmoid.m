function y = mySigmoid(input, lambda)
y = (1./(1+exp(-lambda*input)));
end