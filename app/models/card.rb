class Card < ActiveRecord::Base
  validates_presence_of :title
  belongs_to :project
end