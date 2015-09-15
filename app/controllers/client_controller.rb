class ClientController < ApplicationController

 def index
   @clients = Client.all 
  end

  def create
    @client= Client.new(client_params)
     if @client.save
      redirect_to @client
    else
     render :new
    end
  end

  def new
    @client= Client.new
  end

   
  def show 
    @client = Client.find(params[:id])
  end




private
  def client_params
  params.require(:client).permit(:name, :cash_balance)
    end

end
