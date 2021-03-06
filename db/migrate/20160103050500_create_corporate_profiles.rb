class CreateCorporateProfiles < ActiveRecord::Migration
  def change
    create_table :corporate_profiles do |s|
	  
	    s.string :status
      s.string :companyname
      s.string :companylogo
      s.string :companybanner
      s.string :companymotto
      s.string :companywebsite
      s.string :companyindustry
      s.string :companyhiringstatus
      s.string :companytype
      s.string :companyheadquarters
      s.string :companysize
      s.string :companyvideo
      s.string :aboutus
      s.string :ourpeople
      s.string :country
      s.string :state
      s.string :city

      s.references :user, index: true, foreign_key: true

      s.timestamps null: false
    end
      add_index :corporate_profiles, [:user_id, :created_at]
      
    end
  end


       