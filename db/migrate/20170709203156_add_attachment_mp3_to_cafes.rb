class AddAttachmentMp3ToCafes < ActiveRecord::Migration[5.1]
  def self.up
    change_table :cafes do |t|
      t.attachment :mp3
    end
  end

  def self.down
    remove_attachment :cafes, :mp3
  end
end
