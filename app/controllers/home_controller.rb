class HomeController < ApplicationController
  def index
    if params[:ticker] == ""
      @nothing = "Hey! You Forgot to Enter a Symbol"
    elsif params[:ticker]
      begin
        @stock = StockQuote::Stock.quote(params[:ticker])
      rescue StandardError
        @stock = nil
        @error = "Hey! That Stock Symbol Doesn't Exist. Please Try Again"
      end
    end
  end

  def about
  end
end
