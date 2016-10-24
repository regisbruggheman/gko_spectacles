class SpectaclesController < ContentsController
  respond_to :html, :js
  belongs_to :spectacle_list


  protected
    def load_resource_associations
        super
        @spectacle_events = resource.spectacle_events
    end 
                            
end
