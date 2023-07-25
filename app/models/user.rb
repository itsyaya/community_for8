class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :posts
  has_many :comments
  rolify

  def admin?
    has_role?(:admin)
  end

  def moderator?
    has_role?(:moderator)
  end
end
