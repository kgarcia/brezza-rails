class CreateTestimonials < ActiveRecord::Migration[5.0]
  def change
    create_table :testimonials do |t|
      t.string :title
      t.text :quote
      t.string :autor
      t.string :date

      t.timestamps
    end
  end
end
