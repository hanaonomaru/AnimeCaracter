class CreateAnimeCharacters < ActiveRecord::Migration[6.1]
  def change
    create_table :anime_characters do |t|
      t.string :name, null: false
      t.integer :age, null: false
      t.string :gender, null: false
      t.string :voice_acter, null: false

      t.timestamps
    end
  end
end
