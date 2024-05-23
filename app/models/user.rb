class User < ApplicationRecord
  # Add Rails Validations (https://guides.rubyonrails.org/active_record_validations.html)
  validates :password_confirmation, presence: true, on: %i[create update]
  validates :username, presence: true, length: { minimum: 2 }
  validates :photo, presence: true
  validates :email, presence: true

  include Devise::JWT::RevocationStrategies::JTIMatcher

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :jwt_authenticatable, jwt_revocation_strategy: self
end
