class User < ActiveRecord::Base
	has_many :movies
	validates :name, presence: :true
	validates :age, presence: :true
	validates :role, presence: :true, :format => /(actor)|(director)|(producer)/
	validates :gender, presence: :true
end
