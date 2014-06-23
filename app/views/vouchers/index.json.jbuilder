json.array!(@vouchers) do |voucher|
  json.extract! voucher, :id, :voucher_code, :times_usable
  json.url voucher_url(voucher, format: :json)
end
