class AddAttachmentImgToSteps < ActiveRecord::Migration
  def self.up
    change_table :steps do |t|
      t.attachment :img
    end
  end

  def self.down
    remove_attachment :steps, :img
  end
end
