class SuppliersController < ApplicationController
  before_action :check_if_logged_out, only: [:new, :create]
  before_action :check_if_logged_in, only: [:edit, :update]

    def show
      @supplier = Supplier.find_by(id: params["id"])
    end

    def new
      @supplier = Supplier.new
    end

    def edit
      @supplier = Supplier.find_by(id: params['id'])
    end

    def update
    supplier = Supplier.find_by(id: params["id"])
    supplier.update( supplier_params() )
    redirect_to "/suppliers/#{supplier.id}"
    end

    def create
      @supplier = Supplier.new( supplier_params )
    if @supplier.save
      session[:supplier_id] = @supplier.id
      redirect_to supplier_path( @supplier )
    else
      render :new
    end

    def destroy
      supplier = Supplier.find_by(id: params["id"])
      supplier.destroy
      redirect_to "/"
   end
  end

  private

    def supplier_params
       params.require(:supplier).permit(:name, :password, :password_confirmation, :industry, :email, :phone, :website, :location, :image)
    end

    def check_if_logged_out
      if @current_supplier
        flash[:error] = "You are already logged in"
        redirect_to "/suppliers"
      end
    end

    def check_if_logged_in
      unless @current_supplier
        flash[:error] = "You need to be logged in for that"
        redirect_to "/login"
      end
    end
end
