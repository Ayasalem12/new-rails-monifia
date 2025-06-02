class CreatePostEditors < ActiveRecord::Migration[8.0]
  def change
    create_table :post_editors do |t|
      t.references :creator, null: false, foreign_key: true
      t.references :post, null: false, foreign_key: true

      t.timestamps
    end

    add_index :post_editors, [:creator_id, :post_id], unique: true
  end
end
