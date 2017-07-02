class Cafe < ApplicationRecord
  belongs_to :user

  # validates_presence_of :name, :street_address, :state, :editors_note, :website

  has_attached_file :image, styles: { medium: "1000x1000>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end

