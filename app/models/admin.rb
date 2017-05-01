class Admin < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validate :only_jesse_can_admin, on: :create
  validate :jesses_actual_email, on: :create

  def only_jesse_can_admin
    if Admin.count >= 1
      errors.add(:base, 'You do not have permission to do that.')
    end
  end

  def jesses_actual_email
    unless email == ENV["MY_EMAIL_ADDRESS"] && (password == ENV["MY_PASSWORD"])
    errors.add(:base, 'You do not have permission to do that.')
    end
  end
end
