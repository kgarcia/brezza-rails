class AddAttachmentBannerToTags < ActiveRecord::Migration
  def self.up
    change_table :tags do |t|
      t.attachment :banner
    end
  end

  def self.down
    remove_attachment :tags, :banner
  end
end
