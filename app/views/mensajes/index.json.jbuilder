json.array!(@mensajes) do |mensaje|
  json.extract! mensaje, :id, :nombre, :correo, :mensaje
  json.url mensaje_url(mensaje, format: :json)
end
