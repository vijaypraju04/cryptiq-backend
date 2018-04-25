class PortfolioCurrency < ApplicationRecord
  belongs_to :currency
  belongs_to :portfolio
end
