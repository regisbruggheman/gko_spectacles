class SpectacleEventList < Section
  include Extensions::Models::IsList
  has_many :spectacle_events,
           :order => "spectacle_events.start_date ASC", 
           :foreign_key => 'section_id',
           :dependent => :destroy

  def content_type
   'SpectacleEvent'
  end
end
