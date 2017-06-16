class AddAttachmentImg1ToSteps < ActiveRecord::Migration
  def self.up
    change_table :steps do |t|
      t.attachment :img1
    end
  end

  def self.down
    remove_attachment :steps, :img1
  end
end
