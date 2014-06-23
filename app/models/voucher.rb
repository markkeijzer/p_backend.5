class Voucher < ActiveRecord::Base
  has_many :redeemed_vouchers
end
