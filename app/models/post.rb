class Post < ApplicationRecord
  has_many :comments
  has_many :purchases

  def price_count
    purchases.sum { |purchase| purchase.price}
  end

end
