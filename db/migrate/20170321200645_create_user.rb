class CreateUser < ActiveRecord::Migration[5.0]
   def change
     create_table :users, id: :uuid, default: "gen_random_uuid()", force: true do |t|
      t.string :first_name, :length=>20, null: false
      t.string :last_name, :length=>20, null: false
      t.string :email, :length=>50, null: false
      t.boolean :admin, null: false
      t.boolean :profile_approved
      # t.text :password_digest
      t.index([:email, :first_name], unique: true)
     end
   end
end