require 'fizz_buzz/evaluator'

class EvaluationsController < ApplicationController
  def show
    if fizz_buzz_value
      result = fizz_buzz_value
      render json: result.to_json, status: 200
    else
      render json: {}, status: 404
    end
  end

  private

  def fizz_buzz_value
    FizzBuzz::Evaluator.new.call(params[:id])
  end
end
