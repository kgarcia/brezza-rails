class AddAttachmentOrganigrampicToWhoares < ActiveRecord::Migration
  def self.up
    change_table :whoares do |t|
      t.attachment :organigrampic
    end
  end

  def self.down
    remove_attachment :whoares, :organigrampic
  end
end
