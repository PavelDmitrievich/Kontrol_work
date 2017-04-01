class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.integer :rating
      t.text :body
      t.references :image, foreign_key: true

      t.timestamps
    end
  end
end
