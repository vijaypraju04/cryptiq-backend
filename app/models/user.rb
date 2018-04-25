class User < ApplicationRecord
  has_secure_password validations: false
  has_many :portfolios
  has_many :portfolio_currencies, through: :portfolios
  has_many :currencies, through: :portfolios
end
