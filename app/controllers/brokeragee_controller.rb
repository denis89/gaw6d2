class BrokerageeController < ApplicationController

  def index
   @brokeragees = Brokeragee.all 
  end

  def create
    @brokeragee= Brokeragee.new(brokeragee_params)
     if @brokeragee.save
      redirect_to @brokeragee
    else
     render :new
    end
  end

  def new
    @brokeragee= Brokeragee.new
  end

   
  def show 
    @brokeragee = Brokeragee.find(params[:id])
  end




private
  def brokeragee_params
  params.require(:brokeragee).permit(:name)
    end
end
