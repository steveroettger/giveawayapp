class Contestant < ActiveRecord::Base
  attr_accessible :name, :video_url
  
  has_many :contestant_votes
  
  def votes
    read_attribute(:votes) || contestant_votes.sum(:value)
  end
  
end
