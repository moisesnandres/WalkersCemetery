# encoding: utf-8
# LandingsController
class LandingsController < ApplicationController
  def obituario
    @people = Person.all.where(fecha_fallecimiento: '2016-10-30')
  end
end
