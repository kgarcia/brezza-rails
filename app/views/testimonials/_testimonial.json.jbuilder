json.extract! testimonial, :id, :title, :quote, :autor, :date, :created_at, :updated_at
json.url testimonial_url(testimonial, format: :json)
