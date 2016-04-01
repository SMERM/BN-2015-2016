class Layer <Array
	def initialize(num = 4)
    num.times{self<<SigmoidPerceptron.new}
  end
  def outputs(ins)
    self.map{|o| o.output(ins)}
  end
  def sums
    self.map{|o| o.sum}
  end
end
