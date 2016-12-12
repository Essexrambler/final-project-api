class AdoptsController < ApplicationController
  before_action :set_adopt, only: [:show, :update, :destroy]

  # GET /adopts
  def index
    @adopts = Adopt.all

    render json: @adopts
  end

  # GET /adopts/1
  def show
    render json: @adopt
  end

  # POST /adopts
  def create
    @adopt = Adopt.new(adopt_params)
    @adopt.user = current_user

    if @adopt.save
      render json: @adopt, status: :created, location: @adopt
    else
      render json: @adopt.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /adopts/1
  def update
    if @adopt.update(adopt_params)
      render json: @adopt
    else
      render json: @adopt.errors, status: :unprocessable_entity
    end
  end

  # DELETE /adopts/1
  def destroy
    @adopt.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_adopt
      @adopt = Adopt.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def adopt_params
      params.permit(:user_id, :animal_id, :amount)
    end
end
