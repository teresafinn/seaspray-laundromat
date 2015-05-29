class OrdersController < ApplicationController

  def index
  end

  def new
    @order = Order.new
  end

  def create
    @order = Order.new(order_params)
    if @order.save
      # flash[:message] = "Your order was successfully created!"
      redirect_to new_order_path
    else
      # flash[:error] = "Your order was not saved to the database. :( Try again?"
      redirect_to new_order_path
    end
  end

  private

  def order_params
    params.require(:order).permit(:customer_id, :number_items)
  end

end
