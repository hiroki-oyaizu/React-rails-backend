class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string      :nickname,       null: false,   comment: "ニックネーム"
      t.string      :email,          null: false,   comment: "メールアドレス"
      t.string      :password,       null: false,   comment: "パスワード"
      t.string      :sex,            null: false,   comment: "性別"
      t.boolean     :notification,   null: false,   comment: "メール通知"
      t.timestamps
    end
  end
end
