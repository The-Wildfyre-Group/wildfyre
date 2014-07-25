class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string   :first_name
      t.string   :middle_name
      t.string   :last_name
      t.string   :company
      t.string   :title
      t.string   :personal_email
      t.string   :work_email
      t.string   :cell_phone
      t.string   :work_phone
      t.string   :website
      t.string   :street_address
      t.string   :city
      t.string   :state
      t.string   :zip_code
      t.string   :country
      t.string   :linkedin
      t.string   :twitter
      t.string   :facebook
      t.string   :undergraduate_school
      t.string   :undergraduate_degree
      t.date     :undergraduate_year
      t.string   :graduate_school
      t.string   :graduate_degree
      t.date     :graduate_year
      t.date     :birthday
      t.boolean  :married
      t.integer  :kids

      t.timestamps
    end
  end
end

