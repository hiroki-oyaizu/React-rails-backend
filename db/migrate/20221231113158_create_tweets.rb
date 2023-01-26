class CreateTweets < ActiveRecord::Migration[7.0]
  def change
    create_table :tweets do |t|
      t.string     :tweet,  null: false,  comment: "ツイート"
      t.integer    :tag,    null: false,  comment: "タグ",    default: 0 
      t.timestamps
    end
  end
end
