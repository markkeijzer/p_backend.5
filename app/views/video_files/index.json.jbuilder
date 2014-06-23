json.array!(@video_files) do |video_file|
  json.extract! video_file, :id, :review_id, :scene_id, :file_path
  json.url video_file_url(video_file, format: :json)
end
