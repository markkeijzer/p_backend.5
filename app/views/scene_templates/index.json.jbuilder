json.array!(@scene_templates) do |scene_template|
  json.extract! scene_template, :id, :review_template_id, :name, :description, :sort_order, :max_length, :required, :image_url
  json.url scene_template_url(scene_template, format: :json)
end
