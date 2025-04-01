class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  def role
    email == "admin@example.com" ? "admin" : "user"
  end

  def admin?
    role == "admin"
  end
end
