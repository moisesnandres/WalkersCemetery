class Person < ActiveRecord::Base
  filterrific(
    available_filters: [
      :search_query,
    ],
  )
  belongs_to :sector

  scope :search_query, lambda { |query|
    return nil  if query.blank?
    terms = query.downcase.split(/\s+/)
    terms = terms.map { |e|
      (e.gsub('*', '%') + '%').gsub(/%+/, '%')
    }
    num_or_conds = 2
    where(
      terms.map { |term|
        "(LOWER(people.nombres) LIKE ? OR LOWER(people.apellidos) LIKE ?)"
      }.join(' AND '),
      *terms.map { |e| [e] * num_or_conds }.flatten
    )
  }

  def nombres_completos
    [nombres, apellidos].join(' ')
  end

  def nombres_completos_2
    [apellidos, nombres].join(', ')
  end

end
