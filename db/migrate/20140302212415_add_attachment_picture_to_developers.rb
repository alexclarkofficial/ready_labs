class AddAttachmentPictureToDevelopers < ActiveRecord::Migration
  def self.up
    change_table :developers do |t|
      t.attachment :picture
    end
  end

  def self.down
    drop_attached_file :developers, :picture
  end
end
