# app/controllers/messages_controller.rb
class MessagesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_user
  before_action :set_message, only: [:show, :destroy]



  def index
    if current_user.role == 'teach'
      @messages = Message.where(teacher_id: current_user)
    else
      @messages = Message.where(student_id: current_user)
    end
  end

  def new
    @message = Message.new
    @message = @user.sent_messages.build
  end

  def show
  end

  def create
    @message = Message.new(message_params)
    @message = current_user.sent_messages.build(message_params)
    if current_user.role == 'teach'
    @message.student = User.find(params[:message][:student_id])
    @message.teacher = User.find(params[:user_id])
    else
      @message.student = User.find(params[:user_id])
      @message.teacher = User.find(params[:message][:teacher_id])
    end
    if @message.save
      redirect_to user_messages_path(current_user), notice: 'Message sent successfully.'
    else
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
    params.require(:message).permit(:content, :teacher_id, :student_id)
  end
  def set_user
    @user = User.find(params[:user_id])
  end
  def set_message
    @message = current_user.sent_messages.find_by(id: params[:id])
    unless @message
      redirect_to user_messages_path(current_user), alert: 'Message not found.'
    end
  end
end
