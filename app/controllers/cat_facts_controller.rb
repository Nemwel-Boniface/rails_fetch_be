class CatFactsController < ApplicationController
  def index
    response = HTTParty.get('https://cat-fact.herokuapp.com/facts')
    @response = JSON.parse(response.body)
    if @response
      render json: { status: "SUCCESS", message: "Fetched all the Cat Facts successfully", data: @response }, status: :ok
    else
      render json: @response.errors, status: :bad_request
    end
  end
end
