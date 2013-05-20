class ChatController < ApplicationController
  def chat_list
    if params[:id].nil? #no user
      render :text => "No such a user"
    end

    @list = Chat.all
  end

  def store
    c = Chat.new
    c.content = params[:content]
    c.username = params[:id]
    c.save
    
    redirect_to :action => "chat_list", :id => params[:id]

  end
end
