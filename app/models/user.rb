class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :invitable, :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :name, :email, :password, :password_confirmation, :remember_me

  validates :username, :presence => true,
   :uniqueness => {:allow_blank => true},
   :format => {:with => /^\w+[\w\s:?']+$/i, :allow_blank => true}

  def email_required?
    false
  end
end
