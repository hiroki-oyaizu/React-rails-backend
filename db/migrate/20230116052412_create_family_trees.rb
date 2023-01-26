class CreateFamilyTrees < ActiveRecord::Migration[7.0]
  def change
    create_table :family_trees do |t|
      t.references :genre,           foreign_key: true,      comment: "ジャンルID"
      t.integer    :price,           null: :false,           comment: "金額"
      t.text       :note,                                    comment: "備考"
      t.datetime   :purchase_day,    null: :false,           comment: "購入日"
      t.timestamps
    end
  end
end
