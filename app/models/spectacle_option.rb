class SpectacleOption < ActiveRecord::Base

  TRANSLATED_FIELD = [
    :subtitle, :team, :prod, :intro, :co_prod, :extra, :sponsor
  ].freeze

  translates *TRANSLATED_FIELD

  class Translation
    attr_accessible :locale
  end

  document_accessor :file_doc
  document_accessor :file_press
  document_accessor :file_tech
  document_accessor :file_doc_en
  document_accessor :file_press_en
  document_accessor :file_tech_en
  document_accessor :video_hd
  document_accessor :images_hd

  belongs_to :spectacle,
    :class_name => "Spectacle",
    :foreign_key => :spectacle_id,
    :touch => true

  attr_accessible :file_doc, :file_press, :file_tech, :file_doc_en,
                  :file_press_en, :file_tech_en, :intro, :team, :prod,
                  :subtitle, :extra, :co_prod, :sponsor, :video_url,
                  :video_hd, :images_hd, :remove_video_hd, :remove_images_hd,
                  :remove_file_doc, :remove_file_press, :remove_file_tech,
                  :remove_file_doc_en, :remove_file_press_en, :remove_file_tech_en


end
