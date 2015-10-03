class Weapon < ActiveRecord::Base
	validates :name, presence: true
end
