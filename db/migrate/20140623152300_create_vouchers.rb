class CreateVouchers < ActiveRecord::Migration
  def change
    create_table :vouchers do |t|
      t.string :voucher_code
      t.integer :times_usable

      t.timestamps
    end
  end
end
