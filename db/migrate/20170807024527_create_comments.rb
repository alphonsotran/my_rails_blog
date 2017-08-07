class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.string :author_name
      t.string :string
      t.text :body
      t.references :entry, foreign_key: true

      t.timestamps
    end
  end
end