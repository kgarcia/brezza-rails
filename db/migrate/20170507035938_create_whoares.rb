class CreateWhoares < ActiveRecord::Migration[5.0]
  def change
    create_table :whoares do |t|
      t.text :description
      t.text :brezzastory
      t.text :mission
      t.text :vision
      t.text :history

      t.timestamps
    end
  end
end
