module FizzBuzz
  class Evaluator

    def call(number_as_string)
      if num = Integer(number_as_string) rescue nil
        { num => evaluate_number(num) }
      end
    end

    private

    def evaluate_number(number)
      if ((number % 3) == 0) && ((number % 5) == 0)
        'FizzBuzz'
      elsif (number % 3) == 0
        'Fizz'
      elsif (number % 5) == 0
        'Buzz'
      else
        ''
      end
    end

  end
end
