class Currency < ApplicationRecord
  has_many :portfolio_currencies
  has_many :portfolios, through: :portfolio_currencies
  has_many :users, through: :portfolios
end
