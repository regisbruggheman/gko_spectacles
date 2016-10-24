class Spectacle < Content

  default_scope :order => 'contents.position ASC'

  has_one :meta,
  :class_name => "SpectacleOption",
  :foreign_key => :spectacle_id,
  :dependent => :destroy

  accepts_nested_attributes_for :meta

  attr_accessible :meta_attributes

  delegate(:file_doc, :remove_file_doc, :file_press, :remove_file_press, :file_tech, :remove_file_tech, :file_doc_en, :remove_file_doc_en, :file_press_en, :remove_file_press_en, :file_tech_en, :remove_file_tech_en, :intro, :team, :prod, :subtitle, :extra, :co_prod, :sponsor, :video_hd, :video_url, :remove_video_hd, :remove_images_hd, :images_hd, :to => :meta)

  #----- Associations --------------------------------------------------------------
  has_many :spectacle_events,
    :order => 'spectacle_events.start_date ASC',
    :dependent => :destroy

  accepts_nested_attributes_for :spectacle_events, :allow_destroy => true

  def file_doc?
    meta.presence && file_doc.presence
  end

  def file_doc_en?
    meta.presence && file_doc_en.presence
  end

  def video_url?
    meta.presence && video_url.presence
  end

  def video_hd?
    meta.presence && video_hd.presence
  end

  def images_hd?
    meta.presence && images_hd.presence
  end

  def file_press?
    meta.presence && file_press.presence
  end

  def file_press_en?
    meta.presence && file_press_en.presence
  end

  def file_tech?
    meta.presence && file_tech.presence
  end

  def file_tech_en?
    meta.presence && file_tech_en.presence
  end

  def intro?
    meta.presence && intro.presence
  end

  def team?
    meta.presence && team.presence
  end

  def prod?
    meta.presence && prod.presence
  end

  def extra?
    meta.presence && extra.presence
  end

  def subtitle?
    meta.presence && subtitle.presence
  end

  def co_prod?
    meta.presence && co_prod.presence
  end

  def sponsor?
    meta.presence && sponsor.presence
  end
end
