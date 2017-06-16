class AddNewValuesToSteps < ActiveRecord::Migration[5.0]
  def change
    add_column :steps, :title0, :string
    add_column :steps, :description, :string
  end
end
