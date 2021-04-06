class User < ApplicationRecord
  rolify
  after_create :assign_default_role

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


  def assign_default_role
    self.add_role(:user) if self.roles.blank?
  end
end
