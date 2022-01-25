class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]
  respond_to :js
  def home
  end

  def dashboard
    @user = current_user
    @dog_profile = @user.dog

    @dogs = []
    @favorites = current_user.all_favorites
    @favorites.each do |favorite|
      @dog = Dog.find_by(id: favorite.favoritable_id)
      @dogs << @dog
    end
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
end
