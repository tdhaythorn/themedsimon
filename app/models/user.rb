class User < ActiveRecord::Base
 
has_many :searches, dependent: :destroy
has_many :corporateprofiles, dependent: :destroy


has_secure_password 


#before_create :build_default_profile

#profiles
#has_one :profile, autosave: true
  #accepts_nested_attributes_for :profile




end
