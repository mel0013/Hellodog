class DogsController < ApplicationController
  before_action :set_dog, only: [:show, :edit, :update, :destroy ]
  before_action :authenticate_user!, except: [ :show, :index ]
  respond_to :js
  def index
    @dogs = Dog.all
  end

  def show
  end

  def new
    @dog = Dog.new
  end

  def create
    @dog = Dog.new(dog_params)
    @dog.user = current_user
    if @dog.valid?
      @dog.save
      redirect_to dog_path(@dog), notice: "Saved"
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @dog.update(dog_params)
      redirect_to dog_path(@dog), notice: "Updated"
    else
      render :edit
    end
  end

  def destroy
    @dog.destroy
    redirect_to root_path
  end

  def toggle_favorite
    @dog = Dog.find_by(id: params[:id])
    if current_user.favorited?(@dog)
      current_user.unfavorite(@dog)
    else
      current_user.favorite(@dog)
    end
    respond_to do |format|
      format.js
    end
  end

  private

  def set_dog
    @dog = Dog.find(params[:id])
  end

  def dog_params
    params.require(:dog).permit(
      :name,
      :birth_month,
      :birth_year, :gender,
      :size, :breed,
      :energy_level,
      :vaccinated,
      :neutered,
      :suburb,
      :user_id,
      :photo
    )
  end
end
