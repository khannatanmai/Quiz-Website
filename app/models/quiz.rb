class Quiz < ApplicationRecord
	belongs_to :sub_genre
	has_many :questions

	has_many :scores
	has_many :users, through: :scores
end
