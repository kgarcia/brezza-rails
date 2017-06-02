class AddAttachmentThumbToProducts < ActiveRecord::Migration
  def self.up
    change_table :products do |t|
      t.attachment :thumb
    end
  end

  def self.down
    remove_attachment :products, :thumb
  end
end
