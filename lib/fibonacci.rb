class Fibonacci
  attr_accessor :previous_number, :current_number, :even_sum

  # Returns the next value in a Fibonacci sequence
  def next_number (current_number, previous_number)
    current_number + previous_number
  end

  # Checks if the argument is even, returns boolean
  def is_even? number
    number % 2 == 0
  end

  # Sets the instance variables to the next set of Fibonacci numbers
  def set_next_values (current_num, prev_number)
    @current_number = next_number(current_num, prev_number)
    @previous_number = current_num
  end



  # Sets and returns the value of @sum_even to be the sum of all the even numbers up to a given number in a Fib sequence
  # Takes an argument of the max value that the @current_number should not exceed
  def fib_even max_number
    @previous_number = 0
    @current_number = 1
    @even_sum = 0
    while @current_number < max_number do
      if is_even? @current_number
        @even_sum = @even_sum + @current_number
      end
      set_next_values(@current_number, @previous_number)
    end
    even_sum
  end
end
