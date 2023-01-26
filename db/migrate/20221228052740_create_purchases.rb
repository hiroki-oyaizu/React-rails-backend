class CreatePurchases < ActiveRecord::Migration[7.0]
  def change
    create_table :purchases do |t|
      t.references  :post,  foreign_key: true, index: true, null: false,       comment: "投稿ID"              
      t.integer     :price,                                 null: false,       comment: "金額"
      t.integer     :prefecture_id,  default: 0,            null: false,       comment: "都道府県"
      t.integer     :delivery_time,  default: 0,            null: false,       comment: "お届け時間"
      t.integer     :purchase_type,  default: 0,            null: false,       comment: "購入タイプ"
      t.integer     :price_type,     default: 0,            null: false,       commnet: "税込、税抜"
      t.timestamps
    end
  end
end
