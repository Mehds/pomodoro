class Task < ApplicationRecord
	has_many :cycles
	validates :title, presence: true, length: { minimum: 5 }
	validates :estimation, presence: true, numericality: { only_integer: true, greater_than: 0 }

end
