class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one :cart
  after_create :welcome_email
  after_create :init_cart

<<<<<<< HEAD
  def welcome_email
    UserMailer.welcome_email(self).deliver_now
  end
=======
  has_many :orders 
>>>>>>> development


  def init_cart
    self.create_cart!
  end


end
