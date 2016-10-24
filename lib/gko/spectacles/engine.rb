module Gko
  module Spectacles
    class Engine < ::Rails::Engine
      include Gko::Engine

      initializer 'gko.spectacles.require_section_types' do
        config.to_prepare { 
          require_dependency 'spectacle_list' 
          require_dependency 'spectacle'
          require_dependency 'spectacle_event_list'
          require_dependency 'spectacle_event' 
        }
      end
      
      config.after_initialize do
        Gko.register_engine(Gko::Spectacles)
      end
    end
  end
end