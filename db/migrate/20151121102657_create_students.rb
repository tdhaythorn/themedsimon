class CreateStudents < ActiveRecord::Migration
  def change
   
   create_table :students do |s|
    
      s.string :user_id
      s.string :status
      s.string :firstname
      s.string :lastname
      s.string :imagethumbnail
      s.string :universityname
      s.string :country
      s.string :city
      s.string :state
      s.string :language
      s.float :gpa
      s.integer :workexperience 
      s.string :livingin 
      s.integer :monthsspentabroadliving
      s.integer :monthsspentabroadworking
      s.string :degree 
      s.string :degreetype 
      s.string :countryofdegree
      s.string :wantstoworkin
      s.string :hasworkexperiencein
      s.string :charitywork
      s.integer :age
      s.string :permissiontoworkin 
      s.string :referencesuponrequest 
      s.string :gender
      s.string :currentlyemployed
      s.string :worktype
      
      s.timestamps null: false
    end
  end
end
