require 'fizz_buzz/evaluator'

describe FizzBuzz::Evaluator do
  subject { described_class.new }

  it 'fails gracefully' do
    expect(subject.call('barf')).to be_nil
  end

  context 'with number divisible by 3' do
    [3, 12, 144, -3].each do |number|
      it "returns a hash with number for key and 'Fizz' for value" do
        expect(subject.call(number.to_s)).to eq(number => 'Fizz')
      end
    end
  end

  context 'with number divisible by 5' do
    [5, 10, 20, -40].each do |number|
      it "returns a hash with number for key and 'Buzz' for value" do
        expect(subject.call(number.to_s)).to eq(number => 'Buzz')
      end
    end
  end

  context 'with number divisible by 3 and 5' do
    [15, 30, 45, -90].each do |number|
      it "returns a hash with number for key and 'FizzBuzz' for value" do
        expect(subject.call(number.to_s)).to eq(number => 'FizzBuzz')
      end
    end
  end
end
