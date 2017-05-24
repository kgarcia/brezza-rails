class CreateSliders < ActiveRecord::Migration[5.0]
  def change
    create_table :sliders do |t|
      t.string :title
      t.string :description
      t.string :color
      t.string :buttontext
      t.string :link

      t.timestamps
    end
  end
end
