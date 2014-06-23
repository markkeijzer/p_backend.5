class CreateReviewTemplatesVouchers < ActiveRecord::Migration
  def change
    create_table :review_templates_vouchers do |t|
      t.belongs_to :review_template, index: true
      t.belongs_to :voucher, index: true
    end
  end
end
