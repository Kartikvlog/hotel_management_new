class BillingsController < ApplicationController

  def index
    @pagy,@billings = pagy(Billing.order(created_at: :desc),items:4)
  end

  def show
    @billing = Billing.find(params[:id])
  end

  def new
    @billing = Billing.new
  end

  def create
    @billing = Billing.new(billing_params)
    if @billing.save
      redirect_to @billing
    else
      render 'new'
    end
  end
  
  def edit
    @billing = Billing.find(params[:id])
  end

  def update
    @billing = Billing.find(params[:id])
    if @billing.update(billing_params)
      redirect_to @billing
    else
      render 'edit'
    end
  end

  def destroy
    @billing = Billing.find(params[:id])
    @billing.destroy
    redirect_to billings_path
  end

  private
  def billing_params
    params.require(:billing).permit(:room_type, :number_of_nights, :night_rate, :total_amount, :reservation_id)
  end
end
