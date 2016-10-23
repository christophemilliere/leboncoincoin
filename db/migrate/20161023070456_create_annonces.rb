class CreateAnnonces < ActiveRecord::Migration
  def change
    create_table :annonces do |t|
      t.string :title
      t.integer :represent
      t.references :category, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true
      t.text :description
      t.string :photo
      t.string :city
      t.integer :zip_code
      t.string :price

      t.timestamps null: false
    end
  end
end
