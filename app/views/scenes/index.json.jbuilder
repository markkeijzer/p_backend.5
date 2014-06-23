json.array!(@scenes) do |scene|
  json.extract! scene, :id, :review_id, :sort_order, :max_length, :name, :description, :scene_template_id
  json.url scene_url(scene, format: :json)
end
