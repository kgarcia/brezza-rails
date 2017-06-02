class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :name
      t.string :description
      t.text :detail
      t.string :author
      t.references :category, foreign_key: true
      t.string :amount

      t.timestamps
    end
  end
end
