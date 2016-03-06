class StudentProfile < ActiveRecord::Base # or possibly inherit from ActiveRecord::Base if not using inheritance
  
  belongs_to :user

end
