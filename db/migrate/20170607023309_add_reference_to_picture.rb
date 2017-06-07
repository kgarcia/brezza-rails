class AddReferenceToPicture < ActiveRecord::Migration[5.0]
  def change
    add_reference :pictures, :product, foreign_key: true
  end
end
