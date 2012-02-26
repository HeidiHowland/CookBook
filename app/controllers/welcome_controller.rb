class WelcomeController < ApplicationController
  def index
    @recipe = Recipe.new(user_id: current_user.id) if current_user
  end

end
