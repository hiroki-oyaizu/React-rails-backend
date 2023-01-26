class CreateAnimals < ActiveRecord::Migration[7.0]
  def change
    create_table :animals do |t|
      t.string      :name,         null: false,   comment: "名前"
      t.integer     :age,          null: false,   comment: "年齢"
      t.integer     :animal_type,  null: false,   comment: "種類"
      t.timestamps
    end
  end
end
