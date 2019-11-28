class ChargesController < ApplicationController
  require 'faker'

before_action :authenticate_user!
after_action :init_order, only: [:create]

  def new
    @price = current_user.cart.total_cart
    @amount = (current_user.cart.total_cart * 100).to_i

  end

  def create
    # Amount in cents
    @price = current_user.cart.total_cart
    @amount = (current_user.cart.total_cart * 100).to_i

    customer = Stripe::Customer.create({
      email: params[:stripeEmail],
      source: params[:stripeToken],
    })

    charge = Stripe::Charge.create({
      customer: customer.id,
      amount: @amount,
      description: 'Rails Stripe customer',
      currency: 'usd',
    })

  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to new_charge_path
  end


  private

  def init_order
    @order = Order.new
    @order.user = current_user
    @order.order_reference = Faker::Number.number(digits: 10)
    @order.save
    current_user.cart.line_items.each do |line_item|
      order_items_transfer(line_item, @order)
    end
  end

  def order_items_transfer(line_item, current_order)    
    line_order = OrderItem.new
    line_order.order = current_order
    line_order.item = line_item.item
    line_order.quantity = line_item.quantity 
    line_order.save
    line_item.destroy
  end


end
