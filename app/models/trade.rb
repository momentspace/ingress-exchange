class Trade < ActiveRecord::Base
  has_many :trade_items

  enum exchange_type: { gives: 1, takes: 2 }
end
