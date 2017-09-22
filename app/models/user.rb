class User < ApplicationRecord
  # attr_accessor :encrypted_password

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :cafes

  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

  # before_action :old_enough, only: [:create]

  # validates :old_enough_check, date: true

  # binding.pry

  def age
    age = User.birth_date
  end

  def old_enough
    (Date.strptime(age, '%Y/%m/%d') + 18.years) < Date.today
  end

  def old_enough_check
    if old_enough
      errors.add :birth_date, 'must be older than 18'
    end
  end
end
