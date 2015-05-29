class Event < ActiveRecord::Base
  validates :creator_id, numericality: { only_integer: true }
  validates :name, :when, presence: true

  has_many :ideas
  # def ideas
  #   Idea.where(event_id: self.id)
  # end


  has_many :votes, through: :ideas

end
