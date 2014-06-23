class Voucher < ActiveRecord::Base
  has_many :redeemed_vouchers
  has_and_belongs_to_many :review_templates
end
