class SpectacleEventCategory < ActiveRecord::Base
  
  belongs_to_site
  
  TRANSLATED_FIELD = [
    :title
  ].freeze

  translates *TRANSLATED_FIELD

  class Translation
    attr_accessible :locale
  end
  
  has_many :spectacle_events, :foreign_key => :category_id
  attr_accessible(:title)
end
