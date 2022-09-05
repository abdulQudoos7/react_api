class ReactApisController < ApplicationController
  def index
    @react_apis = ReactApi.all
    render json: @react_apis
  end

  def show
    @react_api = ReactApi.find(params[:id])
    render json: @react_api
  end

  def create
    @react_api = ReactApi.create(
      firstName: params[:firstName],
      lastName: params[:lastName],
      phone: params[:phone],
      gender: params[:gender],
      address: params[:address]
    )
    render json: @react_api
  end

  def update
    @react_api = ReactApi.find(params[:id])
    @react_api.update(
      firstName: params[:firstName],
      lastName: params[:lastName],
      phone: params[:phone],
      gender: params[:gender],
      address: params[:address]
    )
    render json: @react_api
  end

  def destroy
    @react_apis = ReactApi.all
    @react_api = ReactApi.find(params[:id])
    @react_api.destroy
    render json: @react_api
  end
end
