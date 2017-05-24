class AddAttachmentFondoToSliders < ActiveRecord::Migration
  def self.up
    change_table :sliders do |t|
      t.attachment :fondo
    end
  end

  def self.down
    remove_attachment :sliders, :fondo
  end
end
