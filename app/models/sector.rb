class Sector < ActiveRecord::Base
  has_many :people
  def disponible
    capacidad - people.count
  end
end
