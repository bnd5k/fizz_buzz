class EvaluationsController < ApplicationController

  def show
    num = Integer(params[:id]) rescue nil
    if num
      result = { num => evaluate_number(num) }
      status = 200
      render json: result.to_json, status: 200
    else
      render json: {}, status: 404
    end
  end

  def evaluate_number(number)
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
