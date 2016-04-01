class SigmoidPerceptron
	attr_accessor :weights, :sum, :output, :last_size
	def output(ins)
    @weights = @last_size && (@last_size == ins.size) ? @weights : ins.map{|i| (4*rand()-2).round}
		@last_size = ins.size
		@output = set_output(ins)
	end
private
	def set_output(ins)
    @sum = 0;
    ins.each_index{|i| @sum += ins[i]*@weights[i]}
		1/(1 + Math.exp(-1*@sum))
	end
end
