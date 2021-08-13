class Movie < ApplicationRecord
    has_and_belongs_to_many :actors
    has_and_belongs_to_many :genres

    scope :search, ->(keyword){
        where("movies.movie_title LIKE :search",{search: "%#{keyword.downcase}%"})
    }
end
 