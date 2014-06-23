class RedeemedVouchersController < ApplicationController
  before_action :set_redeemed_voucher, only: [:show, :edit, :update, :destroy]

  # GET /redeemed_vouchers
  # GET /redeemed_vouchers.json
  def index
    @redeemed_vouchers = RedeemedVoucher.all
  end

  # GET /redeemed_vouchers/1
  # GET /redeemed_vouchers/1.json
  def show
  end

  # GET /redeemed_vouchers/new
  def new
    @redeemed_voucher = RedeemedVoucher.new
  end

  # GET /redeemed_vouchers/1/edit
  def edit
  end

  # POST /redeemed_vouchers
  # POST /redeemed_vouchers.json
  def create
    @redeemed_voucher = RedeemedVoucher.new(redeemed_voucher_params)

    respond_to do |format|
      if @redeemed_voucher.save
        format.html { redirect_to @redeemed_voucher, notice: 'Redeemed voucher was successfully created.' }
        format.json { render action: 'show', status: :created, location: @redeemed_voucher }
      else
        format.html { render action: 'new' }
        format.json { render json: @redeemed_voucher.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /redeemed_vouchers/1
  # PATCH/PUT /redeemed_vouchers/1.json
  def update
    respond_to do |format|
      if @redeemed_voucher.update(redeemed_voucher_params)
        format.html { redirect_to @redeemed_voucher, notice: 'Redeemed voucher was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @redeemed_voucher.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /redeemed_vouchers/1
  # DELETE /redeemed_vouchers/1.json
  def destroy
    @redeemed_voucher.destroy
    respond_to do |format|
      format.html { redirect_to redeemed_vouchers_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_redeemed_voucher
      @redeemed_voucher = RedeemedVoucher.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def redeemed_voucher_params
      params.require(:redeemed_voucher).permit(:user_id, :voucher_id)
    end
end
