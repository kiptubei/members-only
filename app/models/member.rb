class Member < ApplicationRecord
  has_many :posts
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :email, presence: true, uniqueness: { case_sensitive: false },
            length: {maximum: 50}, format: { with: /\A(.+)@(.+)\z/ }
  validates :password, presence: true, length: { minimum: 6, maximum: 100 },
            format: { with: /\A(?=.*[a-zA-Z])(?=.*[0-9]).{6,}\z/ }

  validates :name, presence: true, uniqueness: { case_sensitive: false }

end
