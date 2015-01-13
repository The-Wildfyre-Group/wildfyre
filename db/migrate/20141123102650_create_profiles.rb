class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.integer :user_id
      t.integer :contact_id
      
      # phone & email
      t.string  :personal_email
      t.string  :work_email
      t.string  :mobile_phone_number
      t.string  :work_phone_number
      t.string  :home_phone_number
      
      # bio & work 
      t.text    :bio
      t.string  :company
      t.string  :title
      t.string  :industries
      t.string  :website_1
      t.string  :website_2

      
      # education
      t.string  :undergraduate_school
      t.string  :graduate_school
      t.string  :doctorate_school
      t.string  :undergraduate_degree
      t.string  :graduate_degree
      t.string  :doctorate_degree
      t.string  :undergraduate_major
      t.string  :graduate_major
      t.string  :doctorate_major
      t.integer :undergraduate_year
      t.integer :graduate_year
      t.integer :doctorate_year
            
      # details
      t.string  :certifications
      t.string  :interests
      t.string  :skills

      # current address
      t.string  :street_address
      t.string  :city
      t.string  :state
      t.string  :country
      t.string  :zipcode
      #hometown
      t.string :hometown
      
      # social media
      t.string  :linkedin
      t.string  :facebook
      t.string  :instagram
      t.string  :twitter
      
      #personal info
      
      t.date     :birthday
      t.boolean  :married
      t.date     :anniversary
      t.boolean  :kids
      t.integer  :number_of_kids
      
      t.timestamps
    end
  end
end



