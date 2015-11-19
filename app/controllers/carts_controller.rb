class CartsController < ApplicationController
    
    before_action :authenticate_user!, only: [:checkout]
    
    def index
        
        if current_cart.cart_items.count <= 0
            flash[:warning] = "目前購物車是空的,請先加入商品!"
            redirect_to products_path
        end
        
    end
    
    def checkout
        
        @order = current_user.orders.build
        @info  = @order.build_info
    end
    
    def clean
        
        current_cart.clean!
        flash[:warning] = "已清空購物車"
        redirect_to carts_path
        
    end
end
