class CharactersController < ApplicationController
  def index
    @characters = AnimeCharacter.all
    @character = AnimeCharacter.new
    @genders = Gender.all
  end

  def create
    @character = AnimeCharacter.new
    @character.name = character_params[:name]
    @character.age = character_params[:age]
    @character.voice_acter = character_params[:voice_acter]
    @character.gender = Gender.find(character_params[:gender])

    if @character.save
      redirect_to action: :index
    else
      @characters = AnimeCharacter.all
      @genders = Gender.all
      render :index
    end
  end

  private
    def character_params
      params.require(:anime_character).permit(:name, :age, :gender, :voice_acter)
    end
  
end
