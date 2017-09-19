class User < ApplicationRecord
	has_secure_password

	has_many :scores
	has_many :quizzes, through: :scores
	
	def admin?
		self.role == 'admin'
	end
end
