class AddAttachmentImageToInfos < ActiveRecord::Migration[5.1]
  def self.up
    change_table :infos do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :infos, :image
  end
end
