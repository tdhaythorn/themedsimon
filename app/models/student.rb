class Student < ActiveRecord::Base
    
    #the below actuall should be a replacement of whats in the search.rb file
    # this is what we were taught at fishburners
     def self.search(search)
         if 
             where(["FirstName LIKE ?", "%#{search}%"])
         else
             all
         end
     end
end
