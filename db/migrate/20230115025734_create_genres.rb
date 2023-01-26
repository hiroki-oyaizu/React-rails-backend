class CreateGenres < ActiveRecord::Migration[7.0]
  def change
    create_table :genres do |t|
      t.string    :genres_title, null: false,   comment: "ジャンルタイトル"
      t.integer   :tax_type    , null: false,   comment: "税抜、税込"
      t.datetime  :buy_day     , null: false,   comment: "登録日"
      t.timestamps
    end
  end
end
