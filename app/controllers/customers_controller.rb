class CustomersController < ApplicationController
  def index
    @customers = Customer.all
  end

  def show
    @customer = Customer.find(params[:id])
  end

  def new
    @customer = Customer.new
  end

  def create
    @customer = Customer.new(customer_params)
    @customer.save!
    redirect_to customers_path
  end

  def destroy
    @customer = Customer.find(params[:id])
    @customer.destroy
    redirect_to restaurants_path, status: :see_other
  end

  private

  def customer_params
    params.require(:customer).permit(:first_name, :last_name, :address, :phone_number, :email)
  end

end
