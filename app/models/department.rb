class Department < ApplicationRecord
	belongs_to :user
	has_many :teachers
end
