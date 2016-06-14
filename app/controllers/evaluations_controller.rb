class EvaluationsController < ApplicationController
  
  # respond_to :json
  
  def show
    num = Integer(params[:id]) rescue nil
    if num
      result = { result: evaluate_number(num) }
      status = 200
    else
      result = { result: '' }
      status = 404
    end
    render json: result.to_json, status: status
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
