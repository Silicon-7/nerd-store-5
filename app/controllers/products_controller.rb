class ProductsController < ApplicationController
  before_action :authenticate_admin!, except: [:index, :show]

  def index
    @products = Product.all
    sort_attribute = params[:sort]
    sort_order = params[:sort_order]
    discount_amount = params[:discount]
    search_term = params[:search_term]
    category_type = params[:category]

    if search_term
      @products = @products.where("name iLIKE ? OR description iLIKE ?", 
                                "%#{search_term}%",
                                "%#{search_term}%")
    end

    if category_type
      category = Category.find_by(name: category_type)
      @products = category.products
    end

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
    @product = Product.new
  end

  def create
    @product = Product.new(
                           name: params[:name],
                           description: params[:description],
                           price: params[:price],
                           supplier_id: params[:supplier][:supplier_id]
                           )
    if @product.save
      flash[:success] = "Product Created"
      redirect_to "/products/#{@product.id}"
    else
      render :new
    end
  end

  def show
    if params[:id] == "random"
      product = Product.all.sample
      redirect_to "/products/#{product.id}"
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
                               price: params[:price],
                               supplier_id: params[:supplier][:supplier_id]
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







