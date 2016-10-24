class SpectacleList < Section  
  include Extensions::Models::IsList
  has_many :spectacles, :foreign_key => 'section_id', :dependent => :destroy
  has_option :display_events_in_spectacle, :default => true, :type => :boolean
  def content_type
   'Spectacle'
  end
end
