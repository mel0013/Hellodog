class ChatroomsController < ApplicationController
  def create
    @chatroom = Chatroom.new
    @user2 = User.find(params[:user_id])
    @chatroom.user1 = current_user
    @chatroom.user2 = @user2
    existing_chatroom = Chatroom.existing_chatroom_for(@user2, current_user)
    if existing_chatroom.nil?
      if @chatroom.save
        redirect_to chatroom_path(@chatroom)
      end
    else
      redirect_to chatroom_path(existing_chatroom)
    end
  end

  def show
    @chatroom = Chatroom.find(params[:id])
    @message = Message.new
  end

  def index
    @chatrooms = Chatroom.where(user1: current_user).or(Chatroom.where(user2: current_user))
  end
end
