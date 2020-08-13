class FlatsController < ApplicationController
  before_action :set_flat, only: [:show, :edit, :update, :destroy]
  # As a user, I can see all the available flats on our website
  def index
    @flats = Flat.all
  end

  # As a user, I can see detailed information of a given flat
  def show
  end

  # As a user, I can post a flat to the website,
  # specifying its name and address
  def new
  end

  def create
  end

  # As a user, I can edit the details of a flat if I made a mistake
  def edit
  end

  def update
  end
  # As a user, I can delete a flat from the website,
  # in case I don’t want to rent it anymore
  def destroy
  end

  private

def set_flat
  @flat = Flat.find(params[:id])
end

def flat_params
  params.require(:flat).permit(:name, :address, :description, :price_per_night,
    :number_of_guests)
end

end
