class OrdersController < ApplicationController

    def index
        @orders = Order.pending
    end

    def create
        @order = Order.new()
        @order.user_id = current_user.id
        @order.line_item_ids = params[:order][:line_item_ids].split(' ') # Just for temp, set from form
        debugger
        if @order.save
            redirect_to orders_path, notice: "Order was successfully created."
        else
            redirect_to request.referer, alert: "Order was not created."
        end
    end

end