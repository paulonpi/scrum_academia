json.extract! ficha_musc, :id, :data, :validade, :obs, :created_at, :updated_at
json.url ficha_musc_url(ficha_musc, format: :json)