class AddAttachmentImg4ToSteps < ActiveRecord::Migration
  def self.up
    change_table :steps do |t|
      t.attachment :img4
    end
  end

  def self.down
    remove_attachment :steps, :img4
  end
end
