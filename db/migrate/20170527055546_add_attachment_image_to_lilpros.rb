class AddAttachmentImageToLilpros < ActiveRecord::Migration
  def self.up
    change_table :lilpros do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :lilpros, :image
  end
end
