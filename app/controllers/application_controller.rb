class ApplicationController < ActionController::Base
    @api = StockQuote::Stock.new(api_key: 'pk_bc27d3b5289f42fdbd060a504d466c44')
end
