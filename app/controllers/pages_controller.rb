class PagesController < ApplicationController
  def index
    @annonces = Annonce.all
  end
end
