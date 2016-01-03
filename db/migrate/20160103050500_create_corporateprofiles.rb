class CreateCorporateprofiles < ActiveRecord::Migration
  def change
    create_table :corporateprofiles do |s|
	  
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

      s.references :user, index: true, foreign_key: true

      s.timestamps null: false
    end
      add_index :corporateprofiles, [:user_id, :created_at]
      
    end
  end
