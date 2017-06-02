class Product < ApplicationRecord
  belongs_to :category
  has_many :product_tags
  has_many :tags, through: :product_tags
  has_attached_file :thumb, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :thumb, content_type: /\Aimage\/.*\z/
  
  #attr_reader :tags
  after_save :save_tags
  
  def tags=(value)
    @tags = value
  end
  
  private
  
  def save_tags
    
    @tags.each do |tag_id|
      ProductTag.find_or_create_by(tag_id: tag_id, product_id: self.id)
    end
  end
end
