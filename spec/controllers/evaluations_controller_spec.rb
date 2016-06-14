require 'spec_helper'

describe EvaluationsController do

  describe 'show' do
    it 'returns 404 when given bad input' do

      get :show, { id: 'asdf' }

      expect(response.status).to eq 404
      expect(response.body).to eq expected_body
    end

    context "returns ''" do
      let(:expected_body) { { result: '' }.to_json }

      [4,7,88].each do |number|
        it "when number is #{number}" do
          get :show, { id: number }

          expect(response.status).to eq 200
          expect(response.body).to eq expected_body
        end
      end

    end

    context "returns 'Fizz'" do
      let(:expected_body) { { result: 'Fizz' }.to_json }

      [3,12,144].each do |number|
        it "when number is #{number}" do
          get :show, { id: number }

          expect(response.status).to eq 200
          expect(response.body).to eq expected_body
        end
      end
    end

    context "returns 'Buzz'" do
      expected_body = { result: 'Buzz' }.to_json

      [5,10,20].each do |number|
        it "when number is #{number}" do
          get :show, { id: number }

          expect(response.status).to eq 200
          expect(response.body).to eq expected_body
        end
      end
    end

    context "returns 'FizzBuzz'" do
      expected_body = { result: 'FizzBuzz' }.to_json

      [15,30,45].each do |number|
        it "when number is #{number}" do
          get :show, { id: number }

          expect(response.status).to eq 200
          expect(response.body).to eq expected_body
        end
      end
    end

  end
end
