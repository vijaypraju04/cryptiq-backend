class Portfolio < ApplicationRecord
  belongs_to :user
  has_many :portfolio_currencies
  has_many :currencies, through: :portfolio_currencies

  def initialCoins=(params)
    coin_count = params.length
  end
end
