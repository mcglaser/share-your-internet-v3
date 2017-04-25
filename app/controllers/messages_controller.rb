class MessagesController < ApplicationController



  def new
  	@message = Message.new
  end




  def create
    @message = Message.create(message_params)
    #render json: @message, status: 201
    render 'create.js', :layout => false
  end




  def index
    @message = Message.new
    @messages = Message.all
    respond_to do |f|
      f.html {render :index }
      f.json {render json: @messages}
    end
  end

  def show
  	@message = Message.find(params[:id])
  end


private

  def message_params
    params.require(:message).permit(:user_message, :user_id)
  end


end