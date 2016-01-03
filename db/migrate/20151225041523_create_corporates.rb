class CreateCorporates < ActiveRecord::Migration
  

  
  def change
    create_table :corporates do |s|
 	  
 	    s.integer :user_id
      s.string :status
      s.string :companyname
      s.string :companylogo
      s.string :companybanner
      s.string :companywebsite
      s.string :companyindustry
      s.string :companytype
      s.string :companyheadquarters
      s.string :companysize
      s.string :companyvideo
      s.string :aboutus
      s.string :country
      s.string :state
      s.string :city

      s.timestamps null: false
    end

  end
end
