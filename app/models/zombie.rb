class Zombie < ActiveRecord::Base
  validates :name, :uniqueness => true
  
  has_many :tweets
  has_many :weapons
  has_one :brain, dependent: :destroy
end
