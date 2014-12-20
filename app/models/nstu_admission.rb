class NstuAdmission < ActiveRecord::Base

 def self.search(search)
   where('roll_no RLIKE?', "[[:<:]]#{search}[[:>:]]")
end  

end
