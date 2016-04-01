require 'spec_helper'

describe SigmoidPerceptron do
  it 'maintains the same weights' do
    sp = SigmoidPerceptron.new
    inputs = [11, -13, 17, -19]
    o = sp.output(inputs)
    expect(sp.last_size).to eq(inputs.size)
    expect((w = sp.weights).size).to eq(inputs.size)
    inputs[0] = 23
    expect((w = sp.weights).size).to eq(inputs.size)
    expect(sp.weights).to eq(w)
  end
end
