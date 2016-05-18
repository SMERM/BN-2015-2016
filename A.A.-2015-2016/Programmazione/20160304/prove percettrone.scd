(
a = SigmoidPerceptron.new.init([1, 432, 265, 123, -213]);
a.output
)


(
a = LinearPerceptron.new.init([1, 432, 265, 123, -213]);
a.output
)

(
l = Layer.new.init([1, 432, 265, 123, -213]);
l.output
)

a = [1, 2]
5.do{a = a.add(3)}
a.postln