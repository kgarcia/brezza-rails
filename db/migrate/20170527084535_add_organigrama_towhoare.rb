class AddOrganigramaTowhoare < ActiveRecord::Migration[5.0]
  def change
    add_column :whoares, :organigram, :text
  end
end
