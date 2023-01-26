class Genre < ApplicationRecord
  has_many :family_trees
# 1 税込
# 2 税抜
  enum tax_type: {with_tax: 0, no_tax: 1}
end
