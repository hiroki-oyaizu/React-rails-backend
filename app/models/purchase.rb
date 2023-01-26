class Purchase < ApplicationRecord
  belongs_to :post

  # all_day:      0            終日
  # morning:      1            午前
  # afternoon:    2            午後
  # specify_time: 3            時間指定
  enum delivery_time: {all_day: 0, morning: 1, afternoon: 2, specify_time: 3}
  
  # delivery:     0      お届け
  # download:     1      ダウンロード
  # limited_time: 2      ストリーミング
  enum purchase_type: {delivery: 0, download: 1, limited_time: 2}

  # tax_included: 0   税込 
  # tax_excluded: 1   税抜
  enum price_type:    {tax_included: 0, tax_excluded: 1}

  scope :check_price, -> {where.not(purchase_type: :limited_time)}
end
