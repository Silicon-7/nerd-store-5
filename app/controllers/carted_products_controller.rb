class CartedProductsController < ApplicationController
  before_action :authenticate_user!
  
  def index
    if current_user && current_user.cart.any?
      @carted_products = current_user.cart
    else
      flash[:warning] = "You have nothing in your shopping cart. Why not add some delightful merchandice."
      redirect_to '/'
    end
  end

  def create
    @carted_product = CartedProduct.new(
                                       user_id: current_user.id,
                                       product_id: params[:product_id],
                                       quantity: params[:quantity],
                                       status: 'carted'
                                       )
    if @carted_product.save
      redirect_to '/carted_products'
    else
      flash[:warning] = "Did you notice you didn't put in a quantity, I noticed."
      redirect_to "/products/#{params[:product_id]}"
    end
  end

  def destroy
    carted_product = CartedProduct.find(params[:id])
    carted_product.update(status: 'removed')
    flash[:success] = 'Product removed from cart'
    redirect_to '/carted_products'
  end
end




