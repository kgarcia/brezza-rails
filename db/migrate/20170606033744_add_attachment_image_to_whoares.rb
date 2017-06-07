class AddAttachmentImageToWhoares < ActiveRecord::Migration
  def self.up
    change_table :whoares do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :whoares, :image
  end
end
