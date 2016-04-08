json.array!(@cases) do |kase|
  json.extract! kase, :id, :type, :description, :value, :loan_amount
  json.url case_url(kase, format: :json)
end
