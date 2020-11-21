class OlivesController < ApplicationController
  before_action :authenticate_user!, expect: [:index]
  def index
    @olives = Olive.all
  end

  def new
  end

end
