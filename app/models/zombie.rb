class Zombie < ActiveRecord::Base
  validates :name, :uniqueness => true
  
  has_many :tweets
  has_many :weapons
end
