class Admin::SpectacleEventsController < Admin::ResourcesController
  belongs_to :site
  belongs_to :spectacle_event_list
end