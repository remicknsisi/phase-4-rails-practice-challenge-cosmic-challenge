class PlanetsController < ApplicationController
  before_action :set_planet, only: %i[ show update destroy ]

  # GET /planets
  def index
    planets = Planet.all

    render json: planets
  end

  def show
    render json: @planet
  end

  def update
    @planet.update!(params)
    render json: @planet, status: :accepted
  end

  def create
    planet = Planet.create!(params)
    render json: planet, status: :created
  end

  def destroy
    @planet.destroy
    head :no_content
  end
end
