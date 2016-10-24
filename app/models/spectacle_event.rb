class SpectacleEvent < ActiveRecord::Base
  include Extensions::Models::BelongsToSection

  TRANSLATED_FIELD = [
    :custom_title
  ].freeze

  translates *TRANSLATED_FIELD

  class Translation
    attr_accessible :locale
  end

  belongs_to :spectacle, :touch => true
  belongs_to :category, :class_name => :spectacle_event_category, :foreign_key => :category_id

  default_scope order('spectacle_events.start_date ASC')

  class << self
    def upcoming(d = Time.zone.now) #year, month, day
      where("spectacle_events.start_date IS NOT NULL AND spectacle_events.start_date >= ?", d).order("spectacle_events.start_date ASC")
    end

    def elapsed(*args) #year, month, day
      where("DATE(spectacle_events.start_date) >= ?", Date.new(*args.map(&:to_i)).to_formatted_s(:db)).order("spectacle_events.start_date DESC")
    end

    def trackable?
      false
    end
  end

  #validates_presence_of :attachable_id, :attachable_type
  validates :start_date, :presence => true, :if => "custom_date.present?"

  attr_accessible(
    :spectacle_id,
    :category_id,
    :start_date,
    :end_date,
    :location,
    :more_info_url,
    :registration_url,
    :custom_title,
    :description,
    :place,
    :custom_date)

  def trackable?
    self.class.trackable?
  end

end
