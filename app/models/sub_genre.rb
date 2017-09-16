class SubGenre < ApplicationRecord
	belongs_to :genre
	has_many :quizzes
end
