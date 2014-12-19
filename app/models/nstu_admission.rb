class NstuAdmission < ActiveRecord::Base

 def self.search(search)
   validates_presence_of :search
   where('roll_no LIKE? OR name LIKE?', "%#{search}%","%#{search}%")
end  

end
