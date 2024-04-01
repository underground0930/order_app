class Admin::OrderUnitsController < Admin::BaseController
  def index
    @order_units = OrderUnit.all.order(created_at: :desc)
  end

  def create
    OrderUnit.create!(code: SecureRandom.hex(16))
    redirect_to admin_order_units_path, success: 'QRコードを発行しました'
  end
end
