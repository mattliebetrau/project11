class Movie < ActiveRecord::Base
  validates_presence_of :name, :rating, :synopsis, :duration
  validates_uniqueness_of :name
  validates_inclusion_of :rating,
                         :in => %w( G PG PG-13 R NR ),
                         message: 'must be capitalized and either G, PG, PG-13, R, or NR'
  validates_length_of :synopsis,
                      :minimum => 16,
                      message: 'is too short. It must be at least 16 characters'
  validates_length_of :name,
                      :maximum => 100,
                      message: 'is too long. It must be less than 100 characters.'
end
