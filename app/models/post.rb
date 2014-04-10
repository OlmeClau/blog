class Post < ActiveRecord::Base
	before_create :initialize_like
	has_many :comments #un post tiene muchos comentarios
	scope :search, lambda {|looking_for| where('posts.text LIKE ?', "%#{looking_for}%")}
	scope :search, lambda {|looking_for| where('posts.category LIKE ?', "%#{looking_for}%")}
	def initialize_like
		self.like=0
	end
end
