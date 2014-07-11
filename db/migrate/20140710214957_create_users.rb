class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      ## Database authenticatable
      t.string :email,              :null => false, :default => ""
      t.string :password_digest, :null => false, :default => ""

      ## Recoverable
      t.string   :reset_password_token
      t.datetime :reset_password_sent_at

      ## Rememberable
      t.datetime :remember_created_at

      ## Token authenticatable
      t.string :authentication_token
      
      ## For friendly ID.
      t.string :slug
      
      ## Invitations.
      t.integer :invited_by_id
      t.integer :invitation_count


      t.timestamps
    end

    add_index :users, :email,                :unique => true
    add_index :users, :reset_password_token, :unique => true
    add_index :users, :slug
  end
end
