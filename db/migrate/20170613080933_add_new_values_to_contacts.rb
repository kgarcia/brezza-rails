class AddNewValuesToContacts < ActiveRecord::Migration[5.0]
  def change
    add_column :contacts, :polpriv, :text
    add_column :contacts, :prospectiva, :text
    add_column :contacts, :escalabilidad, :text
  end
end
