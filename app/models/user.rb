class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one :cart
  has_many :orders
  after_create :welcome_email
  after_create :init_cart
  
  def welcome_email
    UserMailer.welcome_email(self).deliver_now
  end
  
  def init_cart
    self.create_cart!
  end

end
