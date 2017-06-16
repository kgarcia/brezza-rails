class AddAttachmentImg3ToSteps < ActiveRecord::Migration
  def self.up
    change_table :steps do |t|
      t.attachment :img3
    end
  end

  def self.down
    remove_attachment :steps, :img3
  end
end
