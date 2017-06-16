class CreateAlliances < ActiveRecord::Migration[5.0]
  def change
    create_table :alliances do |t|
      t.references :product, foreign_key: true
      t.references :user, foreign_key: true
      t.integer :type
      t.boolean :approval

      t.timestamps
    end
  end
end
