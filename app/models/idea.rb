class Idea < ActiveRecord::Base
  # create validations for ideas, votes and events
  validates :event_id, :creator_id, numericality: { only_integer: true }
  validates :name, presence: true

  has_many :votes
  # def votes
  #   Vote.where(idea_id: self.id)
  # end

  belongs_to :event
end
