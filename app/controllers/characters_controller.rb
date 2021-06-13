class CharactersController < ApplicationController
  def index
    @characters = AnimeCharacter.all
    @character = AnimeCharacter.new
  end

  def create
    @character = AnimeCharacter.new(character_params)
    if @character.save
      redirect_to action: :index
    else
      @characters = AnimeCharacter.all
      render :index
    end
  end

  private
    def character_params
      params.require(:anime_character).permit(:name, :age, :gender, :voice_acter)
    end
  
end
