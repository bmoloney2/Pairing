class CreatePost < ActiveRecord::Migration[5.0]
  def change
    create_table :posts, id: :uuid, default: "gen_random_uuid()", force: true do |t|
      t.string :title, null: false
      t.text :content, null: false
      t.date :date
      t.string :user_id, null: false
      t.string :recipient_email, null: false
      t.integer :rating, null: false
    end
  end
end