json.array!(@kases) do |kase|
  json.extract! kase, :id
  json.url kase_url(kase, format: :json)
end
