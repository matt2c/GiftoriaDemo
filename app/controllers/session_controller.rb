class SessionController < ApplicationController
  def new
  end

  def create
    # raise
    email = params["email"]
    password = params["password"]
    supplier = Supplier.find_by(email: email)
    if supplier.present? && supplier.authenticate(password)
      session[:supplier_id] = supplier.id
      redirect_to "/suppliers/#{supplier.id}"
    else
      flash[:login_error] = "The password or email was incorrect"
      render :new
    end
  end

  def destroy
    session[:supplier_id] = nil
    redirect_to "/"
  end
end
