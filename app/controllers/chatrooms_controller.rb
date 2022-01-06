class ChatroomsController < ApplicationController
  def create
    @chatroom = Chatroom.new
    @user2 = User.find(params[:user2_id])
    @chatroom.user1 = current_user
    @chatroom.user2 = @user2
    @chatroom.save
  end

  def show
    @chatroom = Chatroom.find(params[:id])
  end

end
