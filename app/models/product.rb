class Product < ApplicationRecord
  belongs_to :category
  has_many :product_tags
  has_many :tags, through: :product_tags
  has_many :pictures
  has_attached_file :thumb, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :thumb, content_type: /\Aimage\/.*\z/
  
  #has_many :pictures, :inverse_of => :product, :dependent => :destroy
	# enable nested attributes for pictures through product class
	#accepts_nested_attributes_for :pictures, allow_destroy: true
  attr_accessor :picture_data

  
  #attr_reader :tags
  after_save :save_tags
  
  def tags=(value)
    @tags = value
  end
  
  def save_attachments(params) 
    params[:picture_data].each do |pic| 
      self.pictures.create(:photo => pic) 
    end 
  end

  private
  
  
  def save_tags
    ProductTag.where(:product_id => self.id).destroy_all
    @tags.each do |tag_id|
      ProductTag.find_or_create_by(tag_id: tag_id, product_id: self.id)
    end
  end
end
