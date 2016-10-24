class SpectacleEventsController < BaseController
  include Extensions::Controllers::BelongsToSection
  respond_to :html, :js
  belongs_to :spectacle_event_list
  helper :spectacle_events
  
  def collection
    unless get_collection_ivar
      set_collection_ivar(end_of_association_chain)
    end
    get_collection_ivar
  end                           
end
