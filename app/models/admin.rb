class Admin < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates_inclusion_of :email, in: [Figaro.env.MY_EMAIL_ADDRESS], message: 'This email address not permitted.', on: :create
  validates_inclusion_of :password, in: [Figaro.env.MY_PASSWORD], message: 'This password not permitted.', on: :create
end
