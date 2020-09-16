class CouponsController < ApplicationController

  def index
    @coupons = Coupon.all
  end

  def show
    id = params[:id]
    @coupons = Coupon.find(id)
  end

  def new
    @coupons = Coupon.new
    render :new
  end

  def create
    coupon_name = params["coupon_name"]
    store = params["store"]
      coupon = Coupon.create(coupon_code: coupon_name, store: store)
                redirect_to coupon_path(coupon)
  end


end
