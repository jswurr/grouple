class Vote < ActiveRecord::Base
  validates :user_id, :idea_id, numericality: { only_integer: true }
  validates_uniqueness_of :user_id, scope: [ :idea_id ]

  belongs_to :idea
  # def idea
  #   Idea.find(self.idea_id)
  # end

  validate :users_can_only_vote_once_per_event
  def users_can_only_vote_once_per_event
    vote_count = self.idea.event.votes.where(user_id: self.user_id).count
    if vote_count > 0
      errors.add(:custom, "User has already voted for this event")
    end
  end
end
