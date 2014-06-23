class CreateRedeemedVouchers < ActiveRecord::Migration
  def change
    create_table :redeemed_vouchers do |t|
      t.references :user, index: true
      t.references :voucher, index: true

      t.timestamps
    end
  end
end
