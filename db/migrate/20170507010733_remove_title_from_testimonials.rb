class RemoveTitleFromTestimonials < ActiveRecord::Migration[5.0]
  def change
    remove_column :testimonials, :title, :string
  end
end
