json.array!(@review_templates) do |review_template|
  json.extract! review_template, :id, :title, :product_id, :custom_scenes_allowed
  json.url review_template_url(review_template, format: :json)
end
