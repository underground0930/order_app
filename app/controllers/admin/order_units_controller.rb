class Admin::OrderUnitsController < Admin::BaseController
  def index
    @order_units = OrderUnit.all.order(created_at: :desc)
  end

  def create
  end
end
