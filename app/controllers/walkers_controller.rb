# encoding: utf-8
# WalkersController
class WalkersController < ApplicationController
  before_action :authenticate_admin!

  def index
  end

end
