class Whoare < ApplicationRecord
    has_attached_file :organigrampic, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
    validates_attachment_content_type :organigrampic, content_type: /\Aimage\/.*\z/
    
    def final_url
        separa = history.split('/watch?v=')
        fin = separa.last()
        return fin
        
    end
end
