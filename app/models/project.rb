class Project < ActiveRecord::Base
  validates_presence_of :name
  has_many :cards
  has_many :card_statuses
end