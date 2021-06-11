class CreateAnimeCharacters < ActiveRecord::Migration[6.1]
  def change
    create_table :anime_characters do |t|
      t.string :name
      t.integer :age
      t.string :gender
      t.string :voice_acter

      t.timestamps
    end
  end
end
