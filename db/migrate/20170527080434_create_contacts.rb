class CreateContacts < ActiveRecord::Migration[5.0]
  def change
    create_table :contacts do |t|
      t.text :description
      t.string :name
      t.string :address
      t.string :phone
      t.string :twitter
      t.string :facebook
      t.string :instagram

      t.timestamps
    end
  end
end
