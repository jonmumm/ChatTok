class ChatEntriesController < ApplicationController
  
  # GET /chat_entries/latest/:connectionId
  def latest
    # Get the last chat entry from this connectionId
    @chat_entry = ChatEntry.where("connectionId = ?", params[:connectionId]).last

    render :json => @chat_entry
  end
  
  #POST /chat_entries/add
  def add
    # Create a new chat entry
    @chat_entry = ChatEntry.new
    @chat_entry.connectionId = params[:connectionId]
    @chat_entry.body = params[:body]
    
    @chat_entry.save
    
    render :json => @chat_entry
  end
  
end
