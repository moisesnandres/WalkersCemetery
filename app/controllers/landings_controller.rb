# encoding: utf-8
# LandingsController
class LandingsController < ApplicationController
  def home
    @people = Person.all.where(fecha_fallecimiento: Time.zone.now.strftime("%Y-%m-%d")
)
  end
end
