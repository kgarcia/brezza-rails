class Whoare < ApplicationRecord
    def final_url
        separa = history.split('/')
        fin = separa.last()
        return fin
        
    end
end
