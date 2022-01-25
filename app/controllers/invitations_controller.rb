class InvitationsController < ApplicationController
before_action :authenticate_user!


  def new
    @user2 = User.find(params[:user_id])
    @invitation = Invitation.new
  end

  def index
    if (Invitation.where(status: "pending"))
      @invitations = Invitation.where(user2: current_user)

      # @invitations = Invitation.where(status: "pending")
    else
      @invitations = Invitation.where(user2: current_user) && Invitation.where(status: "accepted")
    end
    # @invitations = Invitation.where(user2: current_user) || Invitation.where(status: "accepted")
  end

  def create
    @user2 = User.find(params[:user_id])
    @invitation = Invitation.new(invitation_params)
    @invitation.user1 = current_user
    @invitation.user2 = @user2
    if @invitation.save
      redirect_to invitations_path
    else
      render 'invitations/new'
    end
  end

  def accept
    @invitation = Invitation.find(params[:id])
    @invitation.update(status: "accepted")
    redirect_to "#{invitations_path}##{@invitation.id}"
  end

  def decline
    @invitation = Invitation.find(params[:id])
    @invitation.destroy
    redirect_to invitations_path
  end



  private

    def invitation_params
      params.require(:invitation).permit(:details, :date_time, :address)
    end
end
