# Create a form that makes a GET request to /products (log in form)
  # There should be an input in this form with the name attribute of name
  # Once this request is handled by the index method
    # If params["name"] exists, @products should be all products where name is params["name"]
    # Otherwise, @products is all products

class ProductsController < ApplicationController
  before_action :authorise, only: [:new, :create]

def index
  # if params["occassion"] is defined
  if params[:occasion].present?
  # @products should be all products where the name field matches params["name"]
    @products = Product.where(:occasion => params[:occasion])
    # Product.where(occasion_field, "<%#{params[:occasion]}%>")
  else
    @products = Product.search(params[:search])
  end

end

def new
  @product = Product.new
end

def create
  product = Product.new( product_params )
  product.supplier = @current_supplier
  product.save
  redirect_to product_path(product)
end

def show
  # irb
  @product = Product.find_by(id: params["id"])
  @supplier = @product.supplier
end

def edit
  @product = Product.find_by(id: params['id'])
end

def update
  product = Product.find_by(id: params["id"])
  product.update( product_params() )
  redirect_to "/products/#{product.id}"
end

private
  def product_params
    params.require(:product).permit(:name, :occasion, :category, :description, :price, :image)
  end

  def authorise
    unless @current_supplier
      flash[:error] = "You need to be logged in for that"
      redirect_to "/login"
    end
  end

end
