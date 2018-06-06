require 'fibonacci'

describe do
  before(:each) do
    @fib = Fibonacci.new
  end

  it 'should return the next Fibonacci number' do
    expect(@fib.next_number(5,3)).to eq 8
    expect(@fib.next_number(8,5)).to eq 13
    expect(@fib.next_number(13,8)).to eq 21
  end

  it 'should return TRUE if the value is even' do
    expect(@fib.is_even?(2)).to be true
    expect(@fib.is_even?(4)).to be true
    expect(@fib.is_even?(6)).to be true
  end

  it 'should return FALSE if the value is even' do
    expect(@fib.is_even?(3)).to be false
    expect(@fib.is_even?(5)).to be false
    expect(@fib.is_even?(7)).to be false
  end

  it 'should set the instance variables to the next correct fibonacci sequence' do
    @fib.set_next_values(3,2)
    expect(@fib.previous_number).to eq 3
    expect(@fib.current_number).to eq 5
  end

  it 'should set the sum of the even fib numbers' do
    @fib.fib_even(4000000)
    expect(@fib.even_sum).to eq 4613732
  end
end
