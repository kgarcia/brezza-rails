class Whoare < ApplicationRecord
    def final_url
        separa = history.split('/watch?v=')
        fin = separa.last()
        return fin
        
    end
end
