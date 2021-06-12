class CharactersController < ApplicationController
  def index
    @characters = AnimeCharacter.all
  end
end
