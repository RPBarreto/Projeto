class Curiosidade < ActiveRecord::Base
	  validates :text, presence :true
	  validates :text, length: {minimum : 10}
end
