class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.string :description
      t.integer :user_id
      t.attachment :image

      t.timestamps
    end
  end
end
