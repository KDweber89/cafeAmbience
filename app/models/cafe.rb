class Cafe < ApplicationRecord
  belongs_to :user

  # validates_presence_of :name, :street_address, :state, :editors_note, :website

  has_attached_file :image, styles: { large: "1000x1000#", medium:"200x100#", thumb: "100x100#" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

  has_attached_file :mp3
  validates_attachment :mp3, :content_type => { :content_type => ["audio/mpeg", "audio/mp3"] }, :file_name => { :matches => [/mp3\Z/] }
end
