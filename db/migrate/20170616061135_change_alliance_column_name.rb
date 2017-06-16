class ChangeAllianceColumnName < ActiveRecord::Migration[5.0]
  def change
    rename_column :alliances, :type, :allytype
  end
end
