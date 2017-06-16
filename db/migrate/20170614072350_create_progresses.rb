class CreateProgresses < ActiveRecord::Migration[5.0]
  def change
    create_table :progresses do |t|
      t.string :title
      t.text :description
      t.string :status
      t.integer :progress
      t.references :product, foreign_key: true

      t.timestamps
    end
  end
end
