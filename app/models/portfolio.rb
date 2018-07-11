class Portfolio < ApplicationRecord
  belongs_to :user
  has_many :portfolio_currencies
  has_many :currencies, through: :portfolio_currencies

  def initialCoins=(params)
    coin_count = params.length
    budget = 3000.00
    trans_amt = budget / coin_count

    params.map do |coinInfo|
      coin = Coin.find_or_create_by(name: coinInfo[:coinName], symbol: coinInfo[:coinSymbol])
      amount = budget / coin_count
    end
  end
end
