class FaleconoscoController < ApplicationController
  def index
    @users = User.all
  end
end
