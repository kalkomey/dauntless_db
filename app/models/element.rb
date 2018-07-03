class Element < ApplicationRecord
	
  has_many :damaged_behemoths, through: :elemental_damages, class_name: 'Behemoth', source: :behemoth
  has_many :elemental_damages
  has_many :weakened_behemoths, through: :elemental_weaknesses, class_name: 'Behemoth', source: :behemoth
  has_many :elemental_weaknesses

  has_one_attached :avatar

  validates :name, presence: true
  
end
