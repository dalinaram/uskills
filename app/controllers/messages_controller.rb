# app/controllers/messages_controller.rb
class MessagesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_user
  before_action :set_message, only: [:show, :destroy]



  def index
      @messages_send = Message.where(from_id: current_user.id)
      @messages_received = Message.where(to_id: current_user.id)
  end

  def new
    @message = Message.new
  end

  def show
  end

  def create
    @message = Message.new(message_params)
    if current_user.role == 'teach'
      @message.to_id = User.find(params[:message][:to_id]).id
      @message.from_id = User.find(params[:user_id]).id
    elsif current_user.role == 'learn'
      @message.from_id = User.find(params[:user_id]).id
      @message.to_id = User.find(params[:message][:to_id]).id
    end
    if @message.save
      redirect_to user_messages_path(current_user), notice: 'Message sent successfully.'
    else
      raise
      render :new
    end
  end

  def destroy
    if @message.destroy
      redirect_to user_messages_path(current_user), notice: 'Message deleted successfully.'
    else
      redirect_to user_messages_path(current_user), alert: 'Unable to delete the message.'
    end
  end



  private

  def message_params
    params.require(:message).permit(:content, :to_id, :from_id)
  end

  def set_user
    @user = User.find(params[:user_id])
  end

  def set_message
    @message = Message.find(params[:id])
    unless @message
      redirect_to user_messages_path(current_user), alert: 'Message not found.'
    end
  end


end
