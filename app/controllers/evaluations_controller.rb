require 'fizz_buzz/evaluator'

class EvaluationsController < ApplicationController

  def show
    if fizz_buzz_value
      result = fizz_buzz_value
      status = 200
      render json: result.to_json, status: 200
    else
      render json: {}, status: 404
    end
  end

  private

  def fizz_buzz_value
    FizzBuzz::Evaluator.call(params[:id])
  end

end
