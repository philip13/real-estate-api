class Api::V1::RealEstatesController < ApplicationController
  before_action :set_real_estate, only: [:show, :update, :destroy]

  # GET /real_estates
  # id, name, type, city and country
  def index
    @real_estates = RealEstate.all

    render json: @real_estates.to_json(only: [:id, :name, :type, :city, :country])
  end

  # GET /real_estates/1
  def show
    render json: @real_estate
  end

  # POST /real_estates
  def create
    @real_estate = RealEstate.new(real_estate_params)

    if @real_estate.save
      render json: @real_estate, status: :created, location: @real_estate
    else
      render json: @real_estate.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /real_estates/1
  def update
    if @real_estate.update(real_estate_params)
      render json: @real_estate
    else
      render json: @real_estate.errors, status: :unprocessable_entity
    end
  end

  # DELETE /real_estates/1
  def destroy
    @real_estate.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_real_estate
      @real_estate = RealEstate.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def real_estate_params
      params.require(:real_estate).permit(:name, :real_state_type, :street, :external_number, :internal_number, :neighborhood, :city, :country, :rooms, :bathrooms, :comments)
    end
end
