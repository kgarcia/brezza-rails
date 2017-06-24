class Tag < ApplicationRecord
      has_attached_file :banner, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :banner, content_type: /\Aimage\/.*\z/
  has_many :product_tags
  has_many :products, through: :product_tags
  extend FriendlyId
  friendly_id :name, use: :slugged
end
