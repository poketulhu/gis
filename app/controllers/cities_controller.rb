class CitiesController < ApplicationController
  before_action :set_city, only: [:show, :edit, :update, :destroy]

  # GET /cities - показать все города
  def index
    @cities = City.all
  end

  # GET /cities/new - html форма для создания нового города
  def new
    @city = City.new
  end

  # POST /cities - добавление нового города в базу
  def create
    @city = City.new(city_params)

    if @city.save
      redirect_to @city, notice: 'City was successfully created.'
    else
      render :new
    end
  end

  private
    # находит город по id
    def set_city
      @city = City.find(params[:id])
    end

    # параметры, разрешенные для создания новой записи в базе данных
    def city_params
      params.require(:city).permit(:name, :latitude, :longitude, :population, :economy, :image)
    end
end
