class Movie < ActiveRecord::Base
	belongs_to :user
	validates :title, presence: :true, length: { minimum: 2 }, uniqueness: true
	validates :year, presence: :true
	validates :rating, presence: :true, :format => /[0]?[0-9]/
	validates :language, presence: :true
	validates :actor, presence: :true
	validates :director, presence: :true
	validates :producer,presence: :true
end
