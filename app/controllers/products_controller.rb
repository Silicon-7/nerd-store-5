class ProductsController < ApplicationController
  def index
    @products = Product.all
    sort_attribute = params[:sort]
    sort_order = params[:sort_order]
    discount_amount = params[:discount]

    if discount_amount
      @products = @products.where("price < ?", discount_amount)
    end

    if sort_attribute && sort_order
      @products = @products.order(sort_attribute => sort_order)
    elsif sort_attribute
      @products = @products.order(sort_attribute)
    end
  end

  def new
  end

  def create
    @product = Product.new(
                           name: params[:name],
                           description: params[:description],
                           image: params[:image],
                           price: params[:price]
                           )
    @product.save
    flash[:success] = "Product Created"
    redirect_to "/products/#{@product.id}"
  end

  def show
    if params[:id] == "random"
      @product = Product.all.sample
    else
      @product = Product.find(params[:id])
    end
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    @product.assign_attributes(
                               name: params[:name],
                               description: params[:description],
                               image: params[:image],
                               price: params[:price]
                               )
    @product.save
    flash[:success] = "Product Updated"
    redirect_to "/products/#{@product.id}"
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy

    flash[:warning] = "Product Created"
    redirect_to "/"
  end
end

