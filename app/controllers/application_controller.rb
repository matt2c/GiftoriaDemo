class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :fetch_supplier

  private
    def lucky_number
      @lucky_number = Random.rand(1..100)
    end
    def fetch_supplier
      @current_supplier = Supplier.find_by(id: session[:supplier_id]) if session[:supplier_id]
      session[:supplier_id] = nil unless @current_supplier.present?
    end
end
