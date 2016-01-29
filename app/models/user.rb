class User < ActiveRecord::Base

 after_create :build_profile

 has_many :searches, dependent: :destroy
 has_one :corporateprofile, dependent: :destroy

 def build_profile
    Corporateprofile.create(user: self) # Associations must be defined correctly for this syntax, avoids using ID's directly.
  end

has_secure_password 

end
