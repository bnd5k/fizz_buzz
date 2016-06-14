require 'spec_helper'

describe EvaluationsController do
  def expected_body(number, value)
    { number => value }.to_json
  end

  describe 'show' do
    it 'returns 404 when given bad input' do
      get :show, id: 'asdf'
      expect(response.status).to eq 404
    end

    context "returns ''" do
      [4, 7, 88, -97].each do |number|
        it "when number is #{number}" do
          get :show, id: number
          expect(response.status).to eq 200
          expect(response.body).to eq expected_body(number, '')
        end
      end
    end

    context "returns 'Fizz'" do
      [3, 12, 144, -3].each do |number|
        it "when number is #{number}" do
          get :show, id: number
          expect(response.status).to eq 200
          expect(response.body).to eq expected_body(number, 'Fizz')
        end
      end
    end

    context "returns 'Buzz'" do
      [5, 10, 20, -40].each do |number|
        it "when number is #{number}" do
          get :show, id: number
          expect(response.status).to eq 200
          expect(response.body).to eq expected_body(number, 'Buzz')
        end
      end
    end

    context "returns 'FizzBuzz'" do
      [15, 30, 45, -90].each do |number|
        it "when number is #{number}" do
          get :show, id: number
          expect(response.status).to eq 200
          expect(response.body).to eq expected_body(number, 'FizzBuzz')
        end
      end
    end
  end
end
