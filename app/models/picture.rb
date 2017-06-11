class Picture < ApplicationRecord
     has_attached_file :photo, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :photo, content_type: /\Aimage\/.*\z/
  
   #photo belongs to album
	belongs_to	:product
	#validations
	validates 	:product, presence: true
	# Photo uploader using carrierwave
=begin   mount_uploader :alt, AvatarUploader
    
    def to_jq_upload
    {
      "name" => read_attribute(:alt),
      "size" => alt.size,
      "url" => alt.url,
      "thumbnail_url" => alt.thumb.url,
      "delete_url" => picture_path(:id => id),
      "delete_type" => "DELETE" 
    }
  end
=end  
end
