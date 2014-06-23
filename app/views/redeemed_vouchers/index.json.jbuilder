json.array!(@redeemed_vouchers) do |redeemed_voucher|
  json.extract! redeemed_voucher, :id, :user_id, :voucher_id
  json.url redeemed_voucher_url(redeemed_voucher, format: :json)
end
