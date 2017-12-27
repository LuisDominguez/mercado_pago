class PagosController < ApplicationController
  def new
  end

  def create
    begin
      require 'mercadopago.rb'
      
      mp = MercadoPago.new('2568851239458283', 'cg5lpJYrP5Dd3m5yzV0SQ0WsuynZxGHU')
    rescue Exception => e
      puts e
    end
  end

  def index
  end
end
