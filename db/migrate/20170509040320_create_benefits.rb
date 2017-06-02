class CreateBenefits < ActiveRecord::Migration[5.0]
  def change
    create_table :benefits do |t|
      t.string :description
      t.string :title1
      t.text :desc1
      t.string :icon1
      t.string :title2
      t.text :desc2
      t.string :icon2
      t.string :title3
      t.text :desc3
      t.string :icon3
      t.string :title4
      t.text :desc4
      t.string :icon4

      t.timestamps
    end
  end
end
