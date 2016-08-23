json.extract! usuario, :id, :nome, :endereco, :telefone, :telefone_responsavel, :data_nasc, :cref, :tipo_usuario, :created_at, :updated_at
json.url usuario_url(usuario, format: :json)