class User < ActiveRecord::Base

 has_secure_password 

  has_one :student_profile, dependent: :destroy
  has_one :corporate_profile, dependent: :destroy
  has_many :searches, dependent: :destroy


  #attr_accessor :profile_type
  before_create :create_profile

	  def create_profile
	    if profile_type == 1
	      build_student_profile
	    elsif profile_type == 2
	      build_corporate_profile
	    end
	  end
 end
