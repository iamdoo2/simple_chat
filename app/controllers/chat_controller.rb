class ChatController < ApplicationController
  def chat_list
    if params[:id].nil? #no user
      render :text => "No such a user"
    elsif !params[:content].nil? #new chat is arrived
      c = Chat.new
      c.content = params[:content]
      c.username = params[:id]
      c.save
    end

    @list = Chat.all
  end
end
