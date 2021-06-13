class AnimeCharacter < ApplicationRecord
    validates :name, presence: true
    validates :age, presence: true, 
                    numericality: {only_integer: true, greater_than_or_equal_to: 0}
    validates :gender, presence: true
    validates :voice_acter, presence: true
end
