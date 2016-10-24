class Admin::SpectaclesController < Admin::ContentsController
  belongs_to :site
  belongs_to :spectacle_list
  before_filter :init_associations, :only => [:new, :edit]

  private

    def init_associations
      resource.build_meta if resource.meta.nil?
    end
end