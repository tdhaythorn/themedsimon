class CreateSearches < ActiveRecord::Migration
  

  
  def change
    create_table :searches do |t|
      t.string :searchname
      t.string :firstname
      t.string :city
      t.float :min_gpa
      t.float :max_gpa
      t.string :universityname
      t.string :country
      t.string :state
      t.string :language
      t.float :gpa
      t.integer :workexperience 
      t.string :livingin 
      t.float :monthsspentabroadliving
      t.float :monthsspentabroadworking
      t.string :degree 
      t.string :degreetype 
      t.string :countryofdegree
      t.string :wantstoworkin
      t.string :hasworkexperiencein
      t.string :charitywork
      t.integer :age
      t.string :permissiontoworkin 
      t.string :referencesuponrequest 
      t.string :gender
      t.string :currentlyemployed
      t.string :worktype

      t.boolean :saved, default: false
      t.integer :resultscount

      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
      add_index :searches, [:user_id, :created_at]

  end
end
