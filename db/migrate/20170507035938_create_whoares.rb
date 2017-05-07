class CreateWhoares < ActiveRecord::Migration[5.0]
  def change
    create_table :whoares do |t|
      t.string :description
      t.string :brezzastory
      t.string :mission
      t.string :vision
      t.string :history

      t.timestamps
    end
  end
end
