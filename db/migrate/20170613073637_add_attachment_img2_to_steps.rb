class AddAttachmentImg2ToSteps < ActiveRecord::Migration
  def self.up
    change_table :steps do |t|
      t.attachment :img2
    end
  end

  def self.down
    remove_attachment :steps, :img2
  end
end
