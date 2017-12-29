class PaymentsController < ApplicationController
  def new
    @payment = Payment.new
  end


  def create
    begin


    rescue Exception => e
      puts e
    end
  end

  def index
  end

  def ws_get_items

    # require 'mercadopago.rb'

    begin
      items = params[:items].split(',')

      _items = Product.where(id: items)
      items_to_payment = []

      _items.each do |item|
        items_to_payment << {
          "title": item.name,
          "quantity": 1,
          "unit_price": item.price,
          "currency_id": "MXN"
        }
      end


      $mp = MercadoPago.new('7339671726493538', 'DQhRNolluJxFzI2Y29m208wrCU6Fnenj')
      preference_data = {
            "items": items_to_payment
        }
      preference = $mp.create_preference(preference_data)
      preference = []


      render :json => {:success => 1, count: _items.size, items: _items, payment: preference}
    rescue Exception => e
      render :json => {:success => 0, :message => e.message}
    end
  end
end
