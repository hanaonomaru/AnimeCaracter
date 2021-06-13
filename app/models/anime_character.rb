class AnimeCharacter < ApplicationRecord
    belongs_to :gender

    validates :name, presence: true
    validates :age, presence: true, 
                    numericality: {only_integer: true, greater_than_or_equal_to: 0}
   # validates :gender, presence: true, inclusion: { in: %w(男性 女性), message: "選択してください" }
    validates :voice_acter, presence: true
end
