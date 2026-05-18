class Agent < ApplicationRecord
  has_many :agent_skills,dependent: :destroy
  has_many :skills, through: :agent_skills
  has_many :missions
  
  validates :name, presence: true
  validates :codename, presence: true #,uniqueness: true  
  validates :level, presence: true, numericality: { greater_than: 0 }
end