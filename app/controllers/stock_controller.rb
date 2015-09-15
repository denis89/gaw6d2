class StockController < ApplicationController

def index
   @stocks = Stock.all 
  end

  def create
    @stock= Stock.new(stock_params)
     if @stock.save
      redirect_to @stock
    else
     render :new
    end
  end

  def new
    @stock= Stock.new
  end

   
  def show 
    @stock = Stock.find(params[:id])
  end




private
  def stock_params
  params.require(:stock).permit(:name, :cash_balance)
    end

end
