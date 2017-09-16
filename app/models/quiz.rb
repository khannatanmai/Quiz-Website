class Quiz < ApplicationRecord
	belongs_to :sub_genre
	has_many :questions
end
