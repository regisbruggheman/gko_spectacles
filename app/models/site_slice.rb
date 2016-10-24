Site.class_eval do
  has_many :spectacle_lists
  has_many :spectacles, :through => :spectacle_lists
  has_many :spectacle_event_lists
  has_many :spectacle_events, :through => :spectacle_event_lists
  has_many :spectacle_event_categories
  
  def program
    spectacle_lists.first
  end
end
