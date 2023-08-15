class HatsController < ApplicationController
  def index
    @hats = Hats.all
  end
end
