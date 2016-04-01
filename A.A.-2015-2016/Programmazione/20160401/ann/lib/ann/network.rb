class Network <Array
  def initialize(topology)
    topology.each{|n| self<<Layer.new(n)}
  end
  def outputs(ins)
    inter = ins
    self.map do
      |l|
      inter = l.outputs(inter)
    end
    inter
  end
end
