class CouponsController < ApplicationController

  def index
    @coupons = Coupon.all
  end

  def show
    id = params[:id]
    @coupon = Coupon.find(id)
  end

end
