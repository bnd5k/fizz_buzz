module FizzBuzz
  class Evaluator

    def self.call(number_as_string)
      num = Integer(number_as_string) rescue nil

      if num
        { num => evaluate_number(num) }
      end
    end

    private

    def self.evaluate_number(number)
      if ((number % 3) == 0) && ((number % 5) == 0)
        result = 'FizzBuzz'
      elsif (number % 3) == 0
        result = 'Fizz'
      elsif (number % 5) == 0
        result = 'Buzz'
      else
        result = ''
      end
      result
    end

  end
end
