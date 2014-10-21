json.array!(@xml_builders) do |xml_builder|
  json.extract! xml_builder, :id
  json.url xml_builder_url(xml_builder, format: :json)
end
