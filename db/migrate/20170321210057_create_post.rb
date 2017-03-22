class CreatePost < ActiveRecord::Migration[5.0]
  def change
    create_table :posts, id: :uuid, default: "gen_random_uuid()", force: true do |t|
      t.string :title, null: false
      t.text :content, null: false
      t.date :date, null: false
      t.string :sender_id, null: false
      t.string :recipient_id, null: false
      t.integer :rating, null: false
      t.index([:sender_id, :recipient_id], unique: true)
    end
  end
end
