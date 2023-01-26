class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.string       :title,    null: false,     comment: "タイトル"
      t.text         :text,     null: false,     comment: "本文"
      t.string       :image,    null: false,     comment: "写真"
      t.timestamps
    end
  end
end
