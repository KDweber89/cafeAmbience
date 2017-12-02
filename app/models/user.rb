class User < ActiveRecord::Base
  # before_create :age_restriction

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :cafes

  has_one :image

  # has_attached_file :imagpe, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/cafe-ambiance-white-logo.png"
  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

  def age_restriction
    binding.pry
    if (self.birth_date&.to_date + 18.years) < Date.today # assuming dob format is mm/dd/yy
      errors.add :birth_date, 'must be older than 18'
    end
  end
end


  # def age
  #   age = User.birth_date
  # end

  # def old_enough
  #   (Date.strptime(age, '%Y/%m/%d') + 18.years) < Date.today
  # end

  # def old_enough_check
  #   if old_enough
  #     errors.add :birth_date, 'must be older than 18'
  #   end
  # end
